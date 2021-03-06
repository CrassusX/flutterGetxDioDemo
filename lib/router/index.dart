// ignore_for_file: non_constant_identifier_names
import 'package:get/get.dart';

import '/pages/home/module.dart' show Home;
import '/pages/reel_detaill/module.dart' show ReelDetaill;
import '/pages/search/module.dart' show VideoSearchPage;
import '/pages/type_detaill/module.dart' show TypeDetaill;
import '/pages/user-declare/module.dart' show UserDeclare;
import '/pages/video-history/module.dart' show VideoHistory;
import '/pages/video_detaill/module.dart' show VideoDetaill;

class PageName {
  static String HOME = '/home';
  static String SEARCH = '/search';
  static String REEL_DETAILL = '/reel_detaill';
  static String VIDEO_DETAILL = '/video_detaill';
  static String TYPE_DETAILL = '/type_detaill';
  static String USER_DECLARE = '/user_declare';
  static String VIDEO_HISTORY = '/video_history';
}

class PageRoutes {
  static final String INIT_ROUTER = PageName.HOME;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: PageName.HOME,
      page: () => const Home(),
    ),
    GetPage(
      name: PageName.SEARCH,
      page: () => const VideoSearchPage(),
    ),
    GetPage(
      name: PageName.REEL_DETAILL,
      page: () => const ReelDetaill(),
    ),
    GetPage(
      name: PageName.VIDEO_DETAILL,
      page: () => const VideoDetaill(),
    ),
    GetPage(
      name: PageName.TYPE_DETAILL,
      page: () => const TypeDetaill(),
    ),
    GetPage(
      name: PageName.USER_DECLARE,
      page: () => const UserDeclare(),
    ),
    GetPage(
      name: PageName.VIDEO_HISTORY,
      page: () => VideoHistory(),
    ),
  ];
}
