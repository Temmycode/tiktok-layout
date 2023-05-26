import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tiktok/providers/video_interaction_providers.dart';
import 'package:tiktok/utils/components/user_icon.dart';

class UserActionList extends StatelessWidget {
  final VoidCallback? onPressedFollow;
  final VoidCallback? onPressed;
  final VoidCallback? onPressedLike;
  bool like;
  final int? noOfLikes;
  final int? noOfComments;
  final int? noOfSaved;
  final int? noOfShared;
  UserActionList({
    super.key,
    required this.like,
    this.onPressedFollow,
    this.onPressed,
    this.noOfLikes,
    this.noOfComments,
    this.noOfSaved,
    this.noOfShared,
    this.onPressedLike,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserIcon(
          onPressed: onPressed,
          onFollowPressed: onPressedFollow,
        ),
        const SizedBox(
          height: 20,
        ),
        Consumer(builder: (context, ref, _) {
          // final isLiked = ref.watch(likeVideoProvider);
          return Column(
            children: [
              GestureDetector(
                onTap: onPressedLike,
                child: Icon(
                  Icons.favorite,
                  size: 32,
                  color: like == true ? Colors.red : Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                noOfLikes.toString(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          );
        }),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            const Icon(
              Icons.comment,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              noOfComments.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            const Icon(
              Icons.bookmark,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              noOfSaved.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            const Icon(
              Icons.send,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              noOfShared.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}
