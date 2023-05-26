import 'package:flutter/material.dart';
import 'package:tiktok/views/user_account_page.dart';
import 'foryou_component.dart';

class ForYouSection extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onPressedLike;
  final TabController controller;
  final PageController pageController;
  const ForYouSection({
    super.key,
    required this.controller,
    this.onPressed,
    required this.pageController,
    this.onPressedLike,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        // user section
        ForYou(
          controller: pageController,
          onPressed: onPressed,
        ),
        // user account section
        const UserAccountPage(),
      ],
    );
  }
}
