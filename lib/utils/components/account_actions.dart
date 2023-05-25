import 'package:flutter/material.dart';
import 'follow_button.dart';
import 'more_button.dart';
import 'share_button.dart';

class AccountActions extends StatelessWidget {
  // handle operations of the message, more and followbutton
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: FollowButton(follow: () {})),
          const SizedBox(
            width: 3,
          ),
          MessageButton(message: () {}),
          const SizedBox(
            width: 3,
          ),
          MoreButton(more: () {})
        ],
      ),
    );
  }
}
