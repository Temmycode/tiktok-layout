import 'package:flutter/material.dart';

class HomePageTabBar extends StatelessWidget {
  final TabController tabController;
  const HomePageTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.live_tv_outlined, color: Colors.white),
            SizedBox(
              width: 200,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                labelStyle: const TextStyle(fontSize: 15),
                indicatorWeight: 5,
                indicatorColor: Colors.white,
                controller: tabController,
                tabs: const [
                  Tab(text: "Following"),
                  Tab(text: "For you"),
                ],
              ),
            ),
            const Icon(Icons.search, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
