import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Android TV App'),
        ),
        body: sampleVideoGrid(),
      ),
    );
  }

  Widget sampleVideoGrid() {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: controller.images
                .map(
                  (url) => InkWell(
                    onTap: () => controller.goToVideoPlayerPage(controller.links[controller.images.indexOf(url)]),
                    // onTap: () {
                    //   Get.toNamed(
                    //     Routes.TV_VIDEO_PLAYER,
                    //   );
                    // },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        url,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
