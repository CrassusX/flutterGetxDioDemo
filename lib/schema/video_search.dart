///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class VideoSearchItemListDataPlayInfoUrlList {
/*
{
  "name": "aliyun",
  "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid=",
  "size": 49482321
} 
*/

  String? name;
  String? url;
  int? size;

  VideoSearchItemListDataPlayInfoUrlList({
    this.name,
    this.url,
    this.size,
  });
  VideoSearchItemListDataPlayInfoUrlList.fromJson(Map<String, dynamic> json) {
    name = json["name"]?.toString();
    url = json["url"]?.toString();
    size = json["size"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    data["size"] = size;
    return data;
  }
}

class VideoSearchItemListDataPlayInfo {
/*
{
  "height": 720,
  "width": 1280,
  "urlList": [
    {
      "name": "aliyun",
      "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid=",
      "size": 49482321
    }
  ],
  "name": "高清",
  "type": "high",
  "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid="
} 
*/

  int? height;
  int? width;
  List<VideoSearchItemListDataPlayInfoUrlList?>? urlList;
  String? name;
  String? type;
  String? url;

  VideoSearchItemListDataPlayInfo({
    this.height,
    this.width,
    this.urlList,
    this.name,
    this.type,
    this.url,
  });
  VideoSearchItemListDataPlayInfo.fromJson(Map<String, dynamic> json) {
    height = json["height"]?.toInt();
    width = json["width"]?.toInt();
    if (json["urlList"] != null) {
      final v = json["urlList"];
      final arr0 = <VideoSearchItemListDataPlayInfoUrlList>[];
      v.forEach((v) {
        arr0.add(VideoSearchItemListDataPlayInfoUrlList.fromJson(v));
      });
      urlList = arr0;
    }
    name = json["name"]?.toString();
    type = json["type"]?.toString();
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["height"] = height;
    data["width"] = width;
    if (urlList != null) {
      final v = urlList;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data["urlList"] = arr0;
    }
    data["name"] = name;
    data["type"] = type;
    data["url"] = url;
    return data;
  }
}

class VideoSearchItemListDataWebUrl {
/*
{
  "raw": "http://www.eyepetizer.net/detail.html?vid=173815",
  "forWeibo": "http://www.eyepetizer.net/detail.html?vid=173815&resourceType=video&utm_campaign=routine&utm_medium=share&utm_source=weibo&uid=0"
} 
*/

  String? raw;
  String? forWeibo;

  VideoSearchItemListDataWebUrl({
    this.raw,
    this.forWeibo,
  });
  VideoSearchItemListDataWebUrl.fromJson(Map<String, dynamic> json) {
    raw = json["raw"]?.toString();
    forWeibo = json["forWeibo"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["raw"] = raw;
    data["forWeibo"] = forWeibo;
    return data;
  }
}

class VideoSearchItemListDataCover {
/*
{
  "feed": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
  "detail": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
  "blurred": "http://img.kaiyanapp.com/922d3d195cb4a51fee96bfd72e6189fd.jpeg?imageMogr2/quality/60/format/jpg",
  "homepage": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageView2/1/w/720/h/560/format/jpg/q/75|watermark/1/image/aHR0cDovL2ltZy5rYWl5YW5hcHAuY29tL2JsYWNrXzMwLnBuZw==/dissolve/100/gravity/Center/dx/0/dy/0|imageslim"
} 
*/

  String? feed;
  String? detail;
  String? blurred;
  String? homepage;

  VideoSearchItemListDataCover({
    this.feed,
    this.detail,
    this.blurred,
    this.homepage,
  });
  VideoSearchItemListDataCover.fromJson(Map<String, dynamic> json) {
    feed = json["feed"]?.toString();
    detail = json["detail"]?.toString();
    blurred = json["blurred"]?.toString();
    homepage = json["homepage"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["feed"] = feed;
    data["detail"] = detail;
    data["blurred"] = blurred;
    data["homepage"] = homepage;
    return data;
  }
}

class VideoSearchItemListDataAuthorShield {
/*
{
  "itemType": "author",
  "itemId": 2369,
  "shielded": false
} 
*/

  String? itemType;
  int? itemId;
  bool? shielded;

  VideoSearchItemListDataAuthorShield({
    this.itemType,
    this.itemId,
    this.shielded,
  });
  VideoSearchItemListDataAuthorShield.fromJson(Map<String, dynamic> json) {
    itemType = json["itemType"]?.toString();
    itemId = json["itemId"]?.toInt();
    shielded = json["shielded"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["itemType"] = itemType;
    data["itemId"] = itemId;
    data["shielded"] = shielded;
    return data;
  }
}

class VideoSearchItemListDataAuthorFollow {
/*
{
  "itemType": "author",
  "itemId": 2369,
  "followed": false
} 
*/

  String? itemType;
  int? itemId;
  bool? followed;

  VideoSearchItemListDataAuthorFollow({
    this.itemType,
    this.itemId,
    this.followed,
  });
  VideoSearchItemListDataAuthorFollow.fromJson(Map<String, dynamic> json) {
    itemType = json["itemType"]?.toString();
    itemId = json["itemId"]?.toInt();
    followed = json["followed"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["itemType"] = itemType;
    data["itemId"] = itemId;
    data["followed"] = followed;
    return data;
  }
}

class VideoSearchItemListDataAuthor {
/*
{
  "id": 2369,
  "icon": "http://img.kaiyanapp.com/50fe7ed6bbb5e5e52620e8664d58d323.png?imageMogr2/quality/60/format/jpg",
  "name": "剧情短片精选",
  "description": "我们只做最好的。",
  "link": "",
  "latestReleaseTime": 1634400481000,
  "videoNum": 437,
  "follow": {
    "itemType": "author",
    "itemId": 2369,
    "followed": false
  },
  "shield": {
    "itemType": "author",
    "itemId": 2369,
    "shielded": false
  },
  "approvedNotReadyVideoCount": 0,
  "ifPgc": true,
  "recSort": 0,
  "expert": false
} 
*/

  int? id;
  String? icon;
  String? name;
  String? description;
  String? link;
  int? latestReleaseTime;
  int? videoNum;
  VideoSearchItemListDataAuthorFollow? follow;
  VideoSearchItemListDataAuthorShield? shield;
  int? approvedNotReadyVideoCount;
  bool? ifPgc;
  int? recSort;
  bool? expert;

  VideoSearchItemListDataAuthor({
    this.id,
    this.icon,
    this.name,
    this.description,
    this.link,
    this.latestReleaseTime,
    this.videoNum,
    this.follow,
    this.shield,
    this.approvedNotReadyVideoCount,
    this.ifPgc,
    this.recSort,
    this.expert,
  });
  VideoSearchItemListDataAuthor.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    icon = json["icon"]?.toString();
    name = json["name"]?.toString();
    description = json["description"]?.toString();
    link = json["link"]?.toString();
    latestReleaseTime = json["latestReleaseTime"]?.toInt();
    videoNum = json["videoNum"]?.toInt();
    follow = (json["follow"] != null)
        ? VideoSearchItemListDataAuthorFollow.fromJson(json["follow"])
        : null;
    shield = (json["shield"] != null)
        ? VideoSearchItemListDataAuthorShield.fromJson(json["shield"])
        : null;
    approvedNotReadyVideoCount = json["approvedNotReadyVideoCount"]?.toInt();
    ifPgc = json["ifPgc"];
    recSort = json["recSort"]?.toInt();
    expert = json["expert"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["icon"] = icon;
    data["name"] = name;
    data["description"] = description;
    data["link"] = link;
    data["latestReleaseTime"] = latestReleaseTime;
    data["videoNum"] = videoNum;
    if (follow != null) {
      data["follow"] = follow!.toJson();
    }
    if (shield != null) {
      data["shield"] = shield!.toJson();
    }
    data["approvedNotReadyVideoCount"] = approvedNotReadyVideoCount;
    data["ifPgc"] = ifPgc;
    data["recSort"] = recSort;
    data["expert"] = expert;
    return data;
  }
}

class VideoSearchItemListDataProvider {
/*
{
  "name": "Vimeo",
  "alias": "vimeo",
  "icon": "http://img.kaiyanapp.com/c3ad630be461cbb081649c9e21d6cbe3.png"
} 
*/

  String? name;
  String? alias;
  String? icon;

  VideoSearchItemListDataProvider({
    this.name,
    this.alias,
    this.icon,
  });
  VideoSearchItemListDataProvider.fromJson(Map<String, dynamic> json) {
    name = json["name"]?.toString();
    alias = json["alias"]?.toString();
    icon = json["icon"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["alias"] = alias;
    data["icon"] = icon;
    return data;
  }
}

class VideoSearchItemListDataConsumption {
/*
{
  "collectionCount": 1213,
  "shareCount": 1223,
  "replyCount": 14,
  "realCollectionCount": 102
} 
*/

  int? collectionCount;
  int? shareCount;
  int? replyCount;
  int? realCollectionCount;

  VideoSearchItemListDataConsumption({
    this.collectionCount,
    this.shareCount,
    this.replyCount,
    this.realCollectionCount,
  });
  VideoSearchItemListDataConsumption.fromJson(Map<String, dynamic> json) {
    collectionCount = json["collectionCount"]?.toInt();
    shareCount = json["shareCount"]?.toInt();
    replyCount = json["replyCount"]?.toInt();
    realCollectionCount = json["realCollectionCount"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["collectionCount"] = collectionCount;
    data["shareCount"] = shareCount;
    data["replyCount"] = replyCount;
    data["realCollectionCount"] = realCollectionCount;
    return data;
  }
}

class VideoSearchItemListData {
/*
{
  "dataType": "VideoBeanForClient",
  "id": 173815,
  "title": "我不要你觉得，我要我觉得",
  "description": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
  "library": "DEFAULT",
  "consumption": {
    "collectionCount": 1213,
    "shareCount": 1223,
    "replyCount": 14,
    "realCollectionCount": 102
  },
  "resourceType": "video",
  "provider": {
    "name": "Vimeo",
    "alias": "vimeo",
    "icon": "http://img.kaiyanapp.com/c3ad630be461cbb081649c9e21d6cbe3.png"
  },
  "category": "剧情",
  "author": {
    "id": 2369,
    "icon": "http://img.kaiyanapp.com/50fe7ed6bbb5e5e52620e8664d58d323.png?imageMogr2/quality/60/format/jpg",
    "name": "剧情短片精选",
    "description": "我们只做最好的。",
    "link": "",
    "latestReleaseTime": 1634400481000,
    "videoNum": 437,
    "follow": {
      "itemType": "author",
      "itemId": 2369,
      "followed": false
    },
    "shield": {
      "itemType": "author",
      "itemId": 2369,
      "shielded": false
    },
    "approvedNotReadyVideoCount": 0,
    "ifPgc": true,
    "recSort": 0,
    "expert": false
  },
  "cover": {
    "feed": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
    "detail": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
    "blurred": "http://img.kaiyanapp.com/922d3d195cb4a51fee96bfd72e6189fd.jpeg?imageMogr2/quality/60/format/jpg",
    "homepage": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageView2/1/w/720/h/560/format/jpg/q/75|watermark/1/image/aHR0cDovL2ltZy5rYWl5YW5hcHAuY29tL2JsYWNrXzMwLnBuZw==/dissolve/100/gravity/Center/dx/0/dy/0|imageslim"
  },
  "playUrl": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=default&source=aliyun&playUrlType=url_oss&udid=",
  "duration": 675,
  "webUrl": {
    "raw": "http://www.eyepetizer.net/detail.html?vid=173815",
    "forWeibo": "http://www.eyepetizer.net/detail.html?vid=173815&resourceType=video&utm_campaign=routine&utm_medium=share&utm_source=weibo&uid=0"
  },
  "releaseTime": 1570204825000,
  "playInfo": [
    {
      "height": 720,
      "width": 1280,
      "urlList": [
        {
          "name": "aliyun",
          "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid=",
          "size": 49482321
        }
      ],
      "name": "高清",
      "type": "high",
      "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid="
    }
  ],
  "ad": false,
  "type": "NORMAL",
  "ifLimitVideo": false,
  "searchWeight": 0,
  "idx": 0,
  "date": 1570204825000,
  "descriptionEditor": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
  "collected": false,
  "reallyCollected": false,
  "played": false
} 
*/

  String? dataType;
  int? id;
  String? title;
  String? description;
  String? theLibrary;
  VideoSearchItemListDataConsumption? consumption;
  String? resourceType;
  VideoSearchItemListDataProvider? provider;
  String? category;
  VideoSearchItemListDataAuthor? author;
  VideoSearchItemListDataCover? cover;
  String? playUrl;
  int? duration;
  VideoSearchItemListDataWebUrl? webUrl;
  int? releaseTime;
  List<VideoSearchItemListDataPlayInfo?>? playInfo;
  bool? ad;
  String? type;
  bool? ifLimitVideo;
  int? searchWeight;
  int? idx;
  int? date;
  String? descriptionEditor;
  bool? collected;
  bool? reallyCollected;
  bool? played;

  VideoSearchItemListData({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.theLibrary,
    this.consumption,
    this.resourceType,
    this.provider,
    this.category,
    this.author,
    this.cover,
    this.playUrl,
    this.duration,
    this.webUrl,
    this.releaseTime,
    this.playInfo,
    this.ad,
    this.type,
    this.ifLimitVideo,
    this.searchWeight,
    this.idx,
    this.date,
    this.descriptionEditor,
    this.collected,
    this.reallyCollected,
    this.played,
  });
  VideoSearchItemListData.fromJson(Map<String, dynamic> json) {
    dataType = json["dataType"]?.toString();
    id = json["id"]?.toInt();
    title = json["title"]?.toString();
    description = json["description"]?.toString();
    theLibrary = json["library"]?.toString();
    consumption = (json["consumption"] != null)
        ? VideoSearchItemListDataConsumption.fromJson(json["consumption"])
        : null;
    resourceType = json["resourceType"]?.toString();
    provider = (json["provider"] != null)
        ? VideoSearchItemListDataProvider.fromJson(json["provider"])
        : null;
    category = json["category"]?.toString();
    author = (json["author"] != null)
        ? VideoSearchItemListDataAuthor.fromJson(json["author"])
        : null;
    cover = (json["cover"] != null)
        ? VideoSearchItemListDataCover.fromJson(json["cover"])
        : null;
    playUrl = json["playUrl"]?.toString();
    duration = json["duration"]?.toInt();
    webUrl = (json["webUrl"] != null)
        ? VideoSearchItemListDataWebUrl.fromJson(json["webUrl"])
        : null;
    releaseTime = json["releaseTime"]?.toInt();
    if (json["playInfo"] != null) {
      final v = json["playInfo"];
      final arr0 = <VideoSearchItemListDataPlayInfo>[];
      v.forEach((v) {
        arr0.add(VideoSearchItemListDataPlayInfo.fromJson(v));
      });
      playInfo = arr0;
    }
    ad = json["ad"];
    type = json["type"]?.toString();
    ifLimitVideo = json["ifLimitVideo"];
    searchWeight = json["searchWeight"]?.toInt();
    idx = json["idx"]?.toInt();
    date = json["date"]?.toInt();
    descriptionEditor = json["descriptionEditor"]?.toString();
    collected = json["collected"];
    reallyCollected = json["reallyCollected"];
    played = json["played"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["dataType"] = dataType;
    data["id"] = id;
    data["title"] = title;
    data["description"] = description;
    data["library"] = theLibrary;
    if (consumption != null) {
      data["consumption"] = consumption!.toJson();
    }
    data["resourceType"] = resourceType;
    if (provider != null) {
      data["provider"] = provider!.toJson();
    }
    data["category"] = category;
    if (author != null) {
      data["author"] = author!.toJson();
    }
    if (cover != null) {
      data["cover"] = cover!.toJson();
    }
    data["playUrl"] = playUrl;
    data["duration"] = duration;
    if (webUrl != null) {
      data["webUrl"] = webUrl!.toJson();
    }
    data["releaseTime"] = releaseTime;
    if (playInfo != null) {
      final v = playInfo;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data["playInfo"] = arr0;
    }
    data["ad"] = ad;
    data["type"] = type;
    data["ifLimitVideo"] = ifLimitVideo;
    data["searchWeight"] = searchWeight;
    data["idx"] = idx;
    data["date"] = date;
    data["descriptionEditor"] = descriptionEditor;
    data["collected"] = collected;
    data["reallyCollected"] = reallyCollected;
    data["played"] = played;
    return data;
  }
}

class VideoSearchItemList {
/*
{
  "type": "video",
  "data": {
    "dataType": "VideoBeanForClient",
    "id": 173815,
    "title": "我不要你觉得，我要我觉得",
    "description": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
    "library": "DEFAULT",
    "consumption": {
      "collectionCount": 1213,
      "shareCount": 1223,
      "replyCount": 14,
      "realCollectionCount": 102
    },
    "resourceType": "video",
    "provider": {
      "name": "Vimeo",
      "alias": "vimeo",
      "icon": "http://img.kaiyanapp.com/c3ad630be461cbb081649c9e21d6cbe3.png"
    },
    "category": "剧情",
    "author": {
      "id": 2369,
      "icon": "http://img.kaiyanapp.com/50fe7ed6bbb5e5e52620e8664d58d323.png?imageMogr2/quality/60/format/jpg",
      "name": "剧情短片精选",
      "description": "我们只做最好的。",
      "link": "",
      "latestReleaseTime": 1634400481000,
      "videoNum": 437,
      "follow": {
        "itemType": "author",
        "itemId": 2369,
        "followed": false
      },
      "shield": {
        "itemType": "author",
        "itemId": 2369,
        "shielded": false
      },
      "approvedNotReadyVideoCount": 0,
      "ifPgc": true,
      "recSort": 0,
      "expert": false
    },
    "cover": {
      "feed": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
      "detail": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
      "blurred": "http://img.kaiyanapp.com/922d3d195cb4a51fee96bfd72e6189fd.jpeg?imageMogr2/quality/60/format/jpg",
      "homepage": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageView2/1/w/720/h/560/format/jpg/q/75|watermark/1/image/aHR0cDovL2ltZy5rYWl5YW5hcHAuY29tL2JsYWNrXzMwLnBuZw==/dissolve/100/gravity/Center/dx/0/dy/0|imageslim"
    },
    "playUrl": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=default&source=aliyun&playUrlType=url_oss&udid=",
    "duration": 675,
    "webUrl": {
      "raw": "http://www.eyepetizer.net/detail.html?vid=173815",
      "forWeibo": "http://www.eyepetizer.net/detail.html?vid=173815&resourceType=video&utm_campaign=routine&utm_medium=share&utm_source=weibo&uid=0"
    },
    "releaseTime": 1570204825000,
    "playInfo": [
      {
        "height": 720,
        "width": 1280,
        "urlList": [
          {
            "name": "aliyun",
            "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid=",
            "size": 49482321
          }
        ],
        "name": "高清",
        "type": "high",
        "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid="
      }
    ],
    "ad": false,
    "type": "NORMAL",
    "ifLimitVideo": false,
    "searchWeight": 0,
    "idx": 0,
    "date": 1570204825000,
    "descriptionEditor": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
    "collected": false,
    "reallyCollected": false,
    "played": false
  },
  "id": 0,
  "adIndex": -1
} 
*/

  String? type;
  VideoSearchItemListData? data;
  int? id;
  int? adIndex;

  VideoSearchItemList({
    this.type,
    this.data,
    this.id,
    this.adIndex,
  });
  VideoSearchItemList.fromJson(Map<String, dynamic> json) {
    type = json["type"]?.toString();
    data = (json["data"] != null)
        ? VideoSearchItemListData.fromJson(json["data"])
        : null;
    id = json["id"]?.toInt();
    adIndex = json["adIndex"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["type"] = type;
    data["data"] = this.data!.toJson();
    data["id"] = id;
    data["adIndex"] = adIndex;
    return data;
  }
}

class VideoSearch {
/*
{
  "itemList": [
    {
      "type": "video",
      "data": {
        "dataType": "VideoBeanForClient",
        "id": 173815,
        "title": "我不要你觉得，我要我觉得",
        "description": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
        "library": "DEFAULT",
        "consumption": {
          "collectionCount": 1213,
          "shareCount": 1223,
          "replyCount": 14,
          "realCollectionCount": 102
        },
        "resourceType": "video",
        "provider": {
          "name": "Vimeo",
          "alias": "vimeo",
          "icon": "http://img.kaiyanapp.com/c3ad630be461cbb081649c9e21d6cbe3.png"
        },
        "category": "剧情",
        "author": {
          "id": 2369,
          "icon": "http://img.kaiyanapp.com/50fe7ed6bbb5e5e52620e8664d58d323.png?imageMogr2/quality/60/format/jpg",
          "name": "剧情短片精选",
          "description": "我们只做最好的。",
          "link": "",
          "latestReleaseTime": 1634400481000,
          "videoNum": 437,
          "follow": {
            "itemType": "author",
            "itemId": 2369,
            "followed": false
          },
          "shield": {
            "itemType": "author",
            "itemId": 2369,
            "shielded": false
          },
          "approvedNotReadyVideoCount": 0,
          "ifPgc": true,
          "recSort": 0,
          "expert": false
        },
        "cover": {
          "feed": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
          "detail": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageMogr2/quality/60/format/jpg",
          "blurred": "http://img.kaiyanapp.com/922d3d195cb4a51fee96bfd72e6189fd.jpeg?imageMogr2/quality/60/format/jpg",
          "homepage": "http://img.kaiyanapp.com/5d72f8519413b0bd68e0484b40a0cf05.jpeg?imageView2/1/w/720/h/560/format/jpg/q/75|watermark/1/image/aHR0cDovL2ltZy5rYWl5YW5hcHAuY29tL2JsYWNrXzMwLnBuZw==/dissolve/100/gravity/Center/dx/0/dy/0|imageslim"
        },
        "playUrl": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=default&source=aliyun&playUrlType=url_oss&udid=",
        "duration": 675,
        "webUrl": {
          "raw": "http://www.eyepetizer.net/detail.html?vid=173815",
          "forWeibo": "http://www.eyepetizer.net/detail.html?vid=173815&resourceType=video&utm_campaign=routine&utm_medium=share&utm_source=weibo&uid=0"
        },
        "releaseTime": 1570204825000,
        "playInfo": [
          {
            "height": 720,
            "width": 1280,
            "urlList": [
              {
                "name": "aliyun",
                "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid=",
                "size": 49482321
              }
            ],
            "name": "高清",
            "type": "high",
            "url": "http://baobab.kaiyanapp.com/api/v1/playUrl?vid=173815&resourceType=video&editionType=high&source=aliyun&playUrlType=url_oss&udid="
          }
        ],
        "ad": false,
        "type": "NORMAL",
        "ifLimitVideo": false,
        "searchWeight": 0,
        "idx": 0,
        "date": 1570204825000,
        "descriptionEditor": "数十年来，从众心理和个体意志与群体意志的对比研究一直是心理学实验的丰富素材，但如果你发现自己成了实验对象呢？你是随波逐流，还是试图向大多数人指出他们的错误呢？在英国作家兼导演及制片人 Theo Gee 和 Ian Bousher 的短片「APING」中，一个经历了不那么简单的从众测试的男人决定给研究人员带来他们想要的黑色喜剧效果。",
        "collected": false,
        "reallyCollected": false,
        "played": false
      },
      "id": 0,
      "adIndex": -1
    }
  ],
  "count": 10,
  "total": 15676,
  "nextPageUrl": "https://baobab.kaiyanapp.com/api/v1/search?start=20&num=10&query=%E6%88%91",
  "adExist": false
} 
*/

  List<VideoSearchItemList?>? itemList;
  int? count;
  int? total;
  String? nextPageUrl;
  bool? adExist;

  VideoSearch({
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
  });
  VideoSearch.fromJson(Map<String, dynamic> json) {
    if (json["itemList"] != null) {
      final v = json["itemList"];
      final arr0 = <VideoSearchItemList>[];
      v.forEach((v) {
        if (v["type"]! == "video") {
          arr0.add(VideoSearchItemList.fromJson(v));
        }
      });
      itemList = arr0;
    }
    count = json["count"]?.toInt();
    total = json["total"]?.toInt();
    nextPageUrl = json["nextPageUrl"]?.toString();
    adExist = json["adExist"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (itemList != null) {
      final v = itemList;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data["itemList"] = arr0;
    }
    data["count"] = count;
    data["total"] = total;
    data["nextPageUrl"] = nextPageUrl;
    data["adExist"] = adExist;
    return data;
  }
}