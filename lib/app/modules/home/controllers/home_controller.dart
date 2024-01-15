import 'package:flutter_androidtv_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> images = [
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerFun.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerJoyrides.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerMeltdowns.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/Sintel.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/SubaruOutbackOnStreetAndDirt.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/images/TearsOfSteel.jpg"
  ];

  List<String> links = [
    "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  ];

  void goToVideoPlayerPage(String url) {
    Get.toNamed(
      Routes.TV_VIDEO_PLAYER,
      parameters: {
        'url': url,
      },
    );   
  }
}
