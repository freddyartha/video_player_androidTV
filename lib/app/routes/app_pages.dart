import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tv_video_player/bindings/tv_video_player_binding.dart';
import '../modules/tv_video_player/views/tv_video_player_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TV_VIDEO_PLAYER,
      page: () => const TvVideoPlayerView(),
      binding: TvVideoPlayerBinding(),
    ),
  ];
}
