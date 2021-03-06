// ignore_for_file: avoid_print
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//
import '/request/http_utils.dart';
//
import '/router/index.dart';
//
import '/service/video_history.dart';
import '/utils/api.dart';
import '/utils/storage.dart';

class CustomImageCache extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() {
    ImageCache imageCache = super.createImageCache();
    imageCache.maximumSize = 10000;
    imageCache.maximumSizeBytes = 10737418240;
    return imageCache;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kReleaseMode) {
    CustomImageCache();
  }
  // debugPaintSizeEnabled = true;
  await initStore();
  runApp(const MyApp());
}

Future<void> initStore() async {
  // 初始化本地存储类
  await SpUtil().init();
  // 初始化request类
  HttpUtils.init(
    baseUrl: Api.baseUrl,
  );
  // 历史记录，全局
  await Get.putAsync(() => HistoryService().init());
  // 全局注入
  print("全局注入");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.INIT_ROUTER,
      getPages: PageRoutes.routes,
    );
  }
}
