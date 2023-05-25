import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/user_action_list.dart';
import 'package:tiktok/utils/components/video_information.dart';
import 'package:tiktok/views/user_account_page.dart';
import '../helpers.dart';
import 'foryou_component.dart';

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
