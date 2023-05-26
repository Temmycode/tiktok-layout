import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tiktok/main.dart';
import 'package:tiktok/models/video_model.dart';
import 'package:tiktok/providers/video_interaction_providers.dart';
import '../helpers.dart';
import 'user_action_list.dart';
import 'video_information.dart';

class ForYou extends StatefulWidget {
  final PageController controller;
  final VoidCallback? onPressedFollow;
  final VoidCallback? onPressed;
  const ForYou({
    super.key,
    required this.controller,
    required this.onPressed,
    this.onPressedFollow,
  });

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    //  a page view builder that returns a container that contains the whole screen
    return FutureBuilder<Iterable<VideoModel>>(
      future: getFuture(),
      builder: (context, snapshot) {
        var data = snapshot.data;
        late var datalenght = data!.length;

        if (snapshot.hasData) {
          if (data!.isNotEmpty) {
            return PageView.builder(
              controller: widget.controller,
              scrollDirection: Axis.vertical,
              itemCount: datalenght,
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
                        child: Consumer(
                          builder: (context, ref, _) {
                            final isLiked = ref.watch(likeVideoProvider);
                            // solve the like problem tomorrow morning
                            return UserActionList(
                              like: isLiked,
                              onPressed: widget.onPressed,
                              onPressedLike: () {},
                              onPressedFollow: widget.onPressedFollow,
                              noOfComments: data.elementAt(index).noOfComments,
                              noOfLikes: data.elementAt(index).noOfLikes,
                              noOfSaved: data.elementAt(index).noOfSaves,
                              noOfShared: data.elementAt(index).noOfShares,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Container();
          }
        } else {
          return Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        }
      },
    );
  }
}
