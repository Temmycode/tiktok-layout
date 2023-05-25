import 'package:flutter/material.dart';
import 'account_actions.dart';
import 'account_tabbar.dart';
import 'account_tabbar_view.dart';
import 'user_follower_section.dart';

class AccountBodySecion extends StatelessWidget {
  final TabController tabController;
  const AccountBodySecion({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Center(
            child: CircleAvatar(radius: 40),
          ),
          const SizedBox(height: 10),
          Text(
            "@imcominginhot",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          const FollowerSection(),
          const SizedBox(height: 10),
          const AccountActions(),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Look inwared. Be better",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          AccountTabbar(controller: tabController),
          AccountTabBarView(controller: tabController),
        ],
      ),
    );
  }
}
