import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/following.dart';
import 'package:tiktok/utils/components/for_you.dart';
import 'package:tiktok/utils/components/home_page_tabbar.dart';
import 'package:tiktok/views/user_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.grey,
          textTheme: const TextTheme(
            labelLarge: TextStyle(
              color: Colors.white,
            ),
            labelMedium: TextStyle(
              color: Colors.white,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black)),
      home: const TikTok(),
    );
  }
}
