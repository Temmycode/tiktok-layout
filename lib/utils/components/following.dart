import 'package:flutter/material.dart';
import 'package:tiktok/utils/helpers.dart';
import 'user_action_list.dart';
import 'video_information.dart';

class Following extends StatelessWidget {
  // void call back for the follow
  final VoidCallback? onPressedFollow;
  // void call back to open the user account
  final VoidCallback? onPressed;

  final int? noOfComments;

  final int? noOfLikes;

  final int? noOfSaved;

  final int? noOfShared;

  final PageController controller;
  const Following({
    super.key,
    required this.onPressed,
    required this.controller,
    this.onPressedFollow,
    this.noOfComments,
    this.noOfLikes,
    this.noOfSaved,
    this.noOfShared,
  });

  @override
  Widget build(BuildContext context) {
    // page view builder that returns a container that contains the whole screen
    return PageView.builder(
      controller: controller,
      scrollDirection: Axis.vertical,
      itemCount: otherColors.length,
      itemBuilder: (context, index) {
        return Container(
          color: otherColors[index],
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              const Positioned(
                bottom: 80,
                left: 20,
                child: VideoInformation(),
              ),
              Positioned(
                bottom: 80,
                right: 20,
                child: UserActionList(
                  onPressed: onPressed,
                  onPressedFollow: onPressedFollow,
                  noOfComments: noOfComments,
                  noOfLikes: noOfLikes,
                  noOfSaved: noOfSaved,
                  noOfShared: noOfShared,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
