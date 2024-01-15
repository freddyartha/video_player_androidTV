import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controllers/tv_video_player_controller.dart';

class TvVideoPlayerView extends GetView<TvVideoPlayerController> {
  const TvVideoPlayerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<TvVideoPlayerController>(builder: (controller) {
        return Center(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: VideoPlayer(controller.videoPlayerController),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.black26,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 50),
                          reverseDuration: const Duration(milliseconds: 200),
                          child: Row(
                            children: [
                              PopupMenuButton(
                                initialValue: controller.videoPlayerController.value.volume,
                                tooltip: 'Volume',
                                color: Colors.white,
                                onSelected: (volume) {
                                  controller.videoPlayerController.setVolume(
                                    double.parse(
                                      volume.toString(),
                                    ),
                                  );
                                },
                                itemBuilder: (context) {
                                  return [
                                    for (final volume
                                        in controller.exampleVolume)
                                      PopupMenuItem(
                                        value: volume,
                                        child: Text(
                                          '$volume',
                                        ),
                                      )
                                  ];
                                },
                                child: Text(
                                  '${controller.videoPlayerController.value.volume}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              MaterialButton(
                                onPressed: controller.rewind,
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              controller.videoPlayerController.value.isPlaying
                                  ? MaterialButton(
                                      onPressed: controller.playPause,
                                      child: const Icon(
                                        Icons.pause,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    )
                                  : MaterialButton(
                                      onPressed: controller.playPause,
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    ),
                              const SizedBox(
                                width: 20,
                              ),
                              MaterialButton(
                                onPressed: controller.forward,
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              PopupMenuButton(
                                initialValue: controller.videoPlayerController.value.playbackSpeed,
                                tooltip: 'Playback speed',
                                color: Colors.white,
                                onSelected: (speed) {
                                  controller.videoPlayerController.setPlaybackSpeed(
                                    double.parse(
                                      speed.toString(),
                                    ),
                                  );
                                },
                                itemBuilder: (context) {
                                  return [
                                    for (final speed
                                        in controller.examplePlaybackRates)
                                      PopupMenuItem(
                                        value: speed,
                                        child: Text(
                                          '${speed}x',
                                        ),
                                      )
                                  ];
                                },
                                child: Text(
                                  '${controller.videoPlayerController.value.playbackSpeed}x',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
