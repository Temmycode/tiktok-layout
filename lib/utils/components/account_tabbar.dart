import 'package:flutter/material.dart';

class AccountTabbar extends StatelessWidget {
  final TabController controller;
  const AccountTabbar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: -39,
            child: Divider(),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: double.maxFinite,
              child: TabBar(
                  indicatorWeight: 2,
                  unselectedLabelColor: Colors.black26,
                  dividerColor: Colors.black,
                  controller: controller,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.video_collection_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
