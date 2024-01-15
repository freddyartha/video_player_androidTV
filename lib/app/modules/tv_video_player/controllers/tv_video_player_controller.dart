import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class TvVideoPlayerController extends GetxController {
  final List<double> examplePlaybackRates = [
    0.25,
    0.5,
    1.0,
    1.5,
    3.0,
    5.0,
    10.0,
  ];

  final List<double> exampleVolume = [
    1,
    0.75,
    0.50,
    0.35,
    0,
  ];

  late VideoPlayerController videoPlayerController;
  Rx<Duration> position = const Duration(seconds: 0).obs;
  dynamic argumentData = Get.parameters;

  @override
  void onInit() {
    String urlVideo = argumentData['url'].toString();
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(urlVideo));
    VideoProgressIndicator(videoPlayerController, allowScrubbing: true);
    videoPlayerController.initialize().then((_) => update());
    videoPlayerController.addListener(() => update());
    videoPlayerController.setLooping(true);
    videoPlayerController.play();
    super.onInit();
  }

  void rewind() async {
    position.value = (await videoPlayerController.position)!;
    videoPlayerController
        .seekTo(Duration(seconds: position.value.inSeconds - 5));
  }

  void forward() async {
    position.value = (await videoPlayerController.position)!;
    videoPlayerController
        .seekTo(Duration(seconds: position.value.inSeconds + 5));
  }

  void playPause() {
    videoPlayerController.value.isPlaying
        ? videoPlayerController.pause()
        : videoPlayerController.play();
  }
}
