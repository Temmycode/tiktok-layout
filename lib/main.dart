import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tiktok/models/video_model.dart';
import 'package:tiktok/views/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
      ),
    );
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
      home: const HomePage(),
    );
  }
}

List<VideoModel> videoList = [
  VideoModel(
    title: "Joe Eats",
    creator: "Ken Taylor",
    dateCreated: DateTime.now(),
    description: "I love eating good food and no one will stop me",
    noOfLikes: 3,
    noOfComments: 1,
    noOfSaves: 2,
    noOfShares: 0,
    profilePhoto: 'temini',
    id: 0,
    uid: 'slkj34fkj',
    like: false,
  ),
  VideoModel(
    title: "Jake the survivor",
    creator: "Akisanya Temiloluwa",
    dateCreated: DateTime.now(),
    description: "Reminds me of Bob the builder",
    noOfLikes: 100,
    noOfComments: 20,
    noOfSaves: 40,
    noOfShares: 12,
    profilePhoto: 'temini',
    id: 1,
    uid: 'fdflkjsdf',
    like: false,
  ),
  VideoModel(
    title: "Joe Eats",
    creator: "Ken Taylor",
    dateCreated: DateTime.now(),
    description: "I love eating good food and no one will stop me",
    noOfLikes: 5,
    noOfComments: 0,
    noOfSaves: 0,
    noOfShares: 0,
    profilePhoto: 'temini',
    id: 0,
    uid: 'asdffsfd',
    like: false,
  ),
  VideoModel(
    title: "Joe Eats",
    creator: "Ken Taylor",
    dateCreated: DateTime.now(),
    description: "I love eating good food and no one will stop me",
    noOfLikes: 9,
    noOfComments: 1,
    noOfSaves: 2,
    noOfShares: 10,
    profilePhoto: 'temini',
    id: 0,
    uid: 'mfosijdfs',
    like: false,
  ),
];

Future<Iterable<VideoModel>> getFuture() {
  final future = Future.delayed(
    const Duration(seconds: 1),
    () => videoList.map(
      (item) => VideoModel(
        like: item.like,
        title: item.title,
        creator: item.creator,
        dateCreated: item.dateCreated,
        description: item.description,
        noOfLikes: item.noOfLikes,
        noOfComments: item.noOfComments,
        noOfSaves: item.noOfSaves,
        noOfShares: item.noOfShares,
        profilePhoto: item.profilePhoto,
        id: item.id,
        uid: item.uid,
      ),
    ),
  );
  return future;
}
