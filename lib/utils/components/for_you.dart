import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/user_action_list.dart';
import 'package:tiktok/utils/components/video_information.dart';
import 'package:tiktok/views/user_account_page.dart';
import '../helpers.dart';

class ForYou extends StatelessWidget {
  final PageController controller;
  final VoidCallback? onPressedFollow;
  final VoidCallback? onPressed;
  final int? noOfComments;
  final int? noOfLikes;
  final int? noOfSaved;
  final int? noOfShared;
  const ForYou({
    super.key,
    required this.controller,
    required this.onPressed,
    this.onPressedFollow,
    this.noOfComments,
    this.noOfLikes,
    this.noOfSaved,
    this.noOfShared,
  });

  @override
  Widget build(BuildContext context) {
    //  a page view builder that returns a container that contains the whole screen
    return PageView.builder(
      controller: controller,
      scrollDirection: Axis.vertical,
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Container(
          color: colors[index],
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              const Positioned(
                bottom: 80,
                left: 20,
                child:
                    //  a class that gets data from the api
                    VideoInformation(),
              ),
              Positioned(
                bottom: 90,
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

class ForYouSection extends StatelessWidget {
  final VoidCallback? onPressed;
  final TabController controller;
  final PageController pageController;
  const ForYouSection(
      {super.key,
      required this.controller,
      this.onPressed,
      required this.pageController});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        // user section
        ForYou(controller: pageController, onPressed: onPressed),
        // user account section
        const UserAccountPage(),
      ],
    );
  }
}
