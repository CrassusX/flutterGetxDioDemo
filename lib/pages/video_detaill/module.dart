// ignore_for_file: unnecessary_brace_in_string_interps, must_call_super, non_constant_identifier_names, avoid_print
import 'package:dio/dio.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//
import '/components/video_banner.dart';
import '/components/video_factory.dart';
//
import '/fijkplayer_skin/fijkplayer_skin.dart';
//
import '/request/api_response.dart';
import '/request/http_utils.dart';
//
import '/schema/video_related.dart';
//
import '/service/video_history.dart';
//
import '/utils/api.dart';
import '/utils/toast.dart';
//
import '/widget/img_state.dart';
import '/widget/my_loading.dart';
import '/widget/my_state.dart';

class PlayerShowConfig implements ShowConfigAbs {
  @override
  bool speedBtn = true;
  @override
  bool topBar = true;
  @override
  bool lockBtn = true;
  @override
  bool bottomPro = true;
  @override
  bool stateAuto = true;
}

class VideoDetaill extends StatefulWidget {
  const VideoDetaill({Key? key}) : super(key: key);

  @override
  _VideoDetaillState createState() => _VideoDetaillState();
}

class _VideoDetaillState extends State<VideoDetaill>
    with AutomaticKeepAliveClientMixin {
  FijkPlayer player = FijkPlayer();
  ShowConfigAbs vSkinCfg = PlayerShowConfig();
  //
  bool isShowPlayer = false;
  //
  String curPlayUrl = Get.parameters["playUrl"]!;
  String videoId = Get.parameters["id"]!;
  String title = Get.parameters["title"]!;
  String typeName = Get.parameters["typeName"]!;
  String desText = Get.parameters["desText"]!;
  String subTime = Get.parameters["subTime"]!;
  String avatarUrl = Get.parameters["avatarUrl"]!;
  String authorDes = Get.parameters["authorDes"]!;
  String authorName = Get.parameters["authorName"]!;
  String videoPoster = Get.parameters["videoPoster"]!;
  bool isNotAuthor = Get.parameters["avatarUrl"]!.isEmpty ? true : false;

  // 全局控制器
  HistoryService historyService = Get.put(HistoryService());

  @override
  void initState() {
    super.initState();
    // 设置播放源
    Future.delayed(
      const Duration(milliseconds: 400),
      () {
        setState(() {
          isShowPlayer = true;
        });
        player.setDataSource(
          curPlayUrl,
          autoPlay: true,
        );
      },
    );
    // 加入历史记录
    historyService.add(
      id: videoId,
      playUrl: curPlayUrl,
      title: title,
      typeName: typeName,
      desText: desText,
      subTime: subTime,
      avatarUrl: avatarUrl,
      authorDes: authorDes,
      authorName: authorName,
      videoPoster: videoPoster,
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: videoId,
            child: isShowPlayer
                ? FijkView(
                    height: 260,
                    color: Colors.black,
                    fit: FijkFit.cover,
                    player: player,
                    panelBuilder: (
                      FijkPlayer player,
                      FijkData data,
                      BuildContext context,
                      Size viewSize,
                      Rect texturePos,
                    ) {
                      /// 使用自定义的布局
                      return CustomFijkPanel(
                        player: player,
                        viewSize: viewSize,
                        texturePos: texturePos,
                        pageContent: context,
                        showConfig: vSkinCfg,
                        curPlayUrl: curPlayUrl,
                      );
                    },
                  )
                : Container(
                    height: 260,
                    color: Colors.black,
                  ),
          ),
          VideoInfo(
            id: videoId,
            title: title,
            typeName: typeName,
            desText: desText,
            subTime: subTime,
            avatarUrl: avatarUrl,
            authorDes: authorDes,
            authorName: authorName,
            isNotAuthor: isNotAuthor,
            player: player,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class VideoInfo extends StatefulWidget {
  final String id;
  final String title;
  final String typeName;
  final String desText;
  final String subTime;
  final String avatarUrl;
  final String authorName;
  final String authorDes;
  final bool isNotAuthor;
  final FijkPlayer player;
  const VideoInfo({
    Key? key,
    required this.id,
    required this.title,
    required this.typeName,
    required this.desText,
    required this.subTime,
    required this.avatarUrl,
    required this.authorName,
    required this.authorDes,
    required this.isNotAuthor,
    required this.player,
  }) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo>
    with AutomaticKeepAliveClientMixin {
  String get id => widget.id;
  bool get isNotAuthor => widget.isNotAuthor;
  FijkPlayer get player => widget.player;
  // 0加载中 1加载成功 2 失败
  int stateCode = 0;
  String nextPageUrl = Api.getRelatedData;
  final List<VideoRelatedItemList?> _itemList = [];

  Future<ApiResponse<VideoRelated>> getVideoRelatedData() async {
    try {
      dynamic response = await HttpUtils.get('${nextPageUrl}?id=${id}');
      print(response);
      VideoRelated data = VideoRelated.fromJson(response);
      return ApiResponse.completed(data);
    } on DioError catch (e) {
      print(e);
      return ApiResponse.error(e.error);
    }
  }

  Future<void> _pullData() async {
    ApiResponse<VideoRelated> relatedResponse = await getVideoRelatedData();
    if (!mounted) {
      return;
    }
    if (relatedResponse.status == Status.COMPLETED) {
      setState(() {
        stateCode = 1;
        _itemList.addAll(relatedResponse.data!.itemList!);
      });
    } else if (relatedResponse.status == Status.ERROR) {
      setState(() {
        stateCode = 2;
      });
      String errMsg = relatedResponse.exception!.getMessage();
      publicToast(errMsg);
      print("发生错误，位置video_detaill， url: ${nextPageUrl}?id=${id}");
    }
  }

  @override
  void initState() {
    super.initState();
    _pullData();
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyView;
    if (stateCode == 0) {
      bodyView = Container(
        alignment: Alignment.center,
        child: const MyLoading(message: "加载中"),
      );
    } else if (stateCode == 1) {
      bodyView = SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  // 标题
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  // 类型
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '类型： ${widget.typeName}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  // 介绍
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      widget.desText,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            !isNotAuthor
                ? Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VideoBanner(
                      avatarUrl: widget.avatarUrl,
                      rowTitle: widget.authorName,
                      rowDes: widget.authorDes,
                      slotChild: Container(),
                    ),
                  )
                : Container(),
            Divider(height: isNotAuthor ? 0 : 1),
            Column(
              children: _itemList.map((e) {
                return VideoFactory(
                  id: e!.data!.id!.toString(),
                  playUrl: e.data!.playUrl!,
                  title: e.data!.title!,
                  typeName: e.data!.category!,
                  desText: e.data!.description!,
                  subTime:
                      DateTime.fromMillisecondsSinceEpoch(e.data!.releaseTime!)
                          .toString()
                          .substring(0, 19),
                  avatarUrl:
                      e.data!.author != null ? e.data!.author!.icon! : "",
                  authorDes: e.data!.author != null
                      ? e.data!.author!.description!
                      : "",
                  authorName:
                      e.data!.author != null ? e.data!.author!.name! : "",
                  videoPoster: e.data!.cover!.feed!,
                  isPopCurRoute: true,
                  routerPopEnter: () async {
                    await player.stop();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 100,
                            child: FadeInImage(
                              fadeOutDuration: const Duration(milliseconds: 50),
                              fadeInDuration: const Duration(milliseconds: 50),
                              placeholder:
                                  const AssetImage('images/movie-lazy.gif'),
                              image: NetworkImage(e.data!.cover!.feed!),
                              imageErrorBuilder: (context, obj, trace) {
                                return ImgState(
                                  msg: "加载失败",
                                  icon: Icons.broken_image,
                                );
                              },
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.data!.title!,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    e.data!.description!,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      );
    } else if (stateCode == 2) {
      bodyView = Container(
        alignment: Alignment.center,
        child: MyState(
          cb: () async {
            setState(() {
              stateCode = 0;
            });
            await _pullData();
          },
          icon: const Icon(
            Icons.new_releases,
            size: 100,
            color: Colors.red,
          ),
          text: "数据加载失败",
          btnText: "点击重试",
        ),
      );
    } else {
      bodyView = Container();
    }
    return Expanded(
      child: bodyView,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
