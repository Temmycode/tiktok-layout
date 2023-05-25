import 'package:tiktok/views/add_video_page.dart';
import 'package:tiktok/views/friends_page.dart';
import 'package:tiktok/views/inbox_page.dart';
import 'package:tiktok/views/user_account_page.dart';
import 'package:tiktok/views/video_page.dart';
import 'package:flutter/material.dart';

List pages = const [
  TikTok(),
  FriendsPage(),
  AddVideoPage(),
  InboxPage(),
  UserAccountPage(),
];

List<Color> colors = [
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.deepPurple,
  Colors.purpleAccent,
];

List<Color> otherColors = [
  Colors.brown,
  Colors.cyan,
  Colors.black,
  Colors.yellow,
  Colors.indigoAccent,
];
