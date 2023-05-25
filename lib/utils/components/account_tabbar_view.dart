import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/tiktok_videos.dart';

class AccountTabBarView extends StatelessWidget {
  final TabController controller;
  const AccountTabBarView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height -
          kToolbarHeight -
          MediaQuery.of(context).padding.top -
          kBottomNavigationBarHeight,
      child: TabBarView(
        controller: controller,
        children: const [UserVideoSection(), Text("Temiloluwa")],
      ),
    );
  }
}
