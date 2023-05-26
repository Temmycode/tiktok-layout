import 'package:flutter/material.dart';
import 'package:tiktok/views/user_account_page.dart';

class UserIcon extends StatelessWidget {
  final VoidCallback? onFollowPressed;
  final VoidCallback? onPressed;
  const UserIcon(
      {super.key, required this.onPressed, required this.onFollowPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: Stack(
        children: [
          GestureDetector(
              onTap: onPressed,
              child: const CircleAvatar(
                radius: 30,
              )),
          Positioned(
              right: 16,
              bottom: 0,
              child: GestureDetector(
                onTap: onFollowPressed,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
