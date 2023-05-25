import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/user_icon.dart';

class UserActionList extends StatelessWidget {
  final VoidCallback? onPressedFollow;
  final VoidCallback? onPressed;
  final int? noOfLikes;
  final int? noOfComments;
  final int? noOfSaved;
  final int? noOfShared;
  const UserActionList({
    super.key,
    this.onPressedFollow,
    this.onPressed,
    this.noOfLikes,
    this.noOfComments,
    this.noOfSaved,
    this.noOfShared,
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
        Column(
          children: [
            const Icon(
              Icons.favorite,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '12.1K',
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
              Icons.comment,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '1320',
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
              '120',
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
              '10',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}
