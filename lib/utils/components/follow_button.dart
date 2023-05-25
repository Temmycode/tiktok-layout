import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback? follow;
  const FollowButton({super.key, required this.follow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: follow,
      child: Ink(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: const Color.fromARGB(255, 238, 9, 82),
        ),
        child: Center(
          child: Text(
            "Follow",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
