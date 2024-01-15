import 'package:get/get.dart';

import '../controllers/tv_video_player_controller.dart';

class TvVideoPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TvVideoPlayerController>(
      () => TvVideoPlayerController(),
    );
  }
}
