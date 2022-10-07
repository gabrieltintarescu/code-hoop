import 'package:codehoop_client/model/course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../util/constants.dart';

class LessonCard extends StatelessWidget {
  final bool isActive;
  final Lesson lesson;
  const LessonCard({Key? key, required this.isActive, required this.lesson})
      : super(key: key);

  void openVideo(BuildContext context) {
    var urlCode = lesson.videoUrl.split('/');
    YoutubePlayerController videoController = YoutubePlayerController(
      initialVideoId: urlCode.last,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: true,
      ),
    );

    Get.defaultDialog(
      title: '${lesson.name} Lesson',
      titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      titlePadding: const EdgeInsets.only(top: 15),
      content: YoutubePlayer(
        controller: videoController,
        showVideoProgressIndicator: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: kShadowColor,
            )
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => openVideo(context),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isActive ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isActive ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      lesson.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
