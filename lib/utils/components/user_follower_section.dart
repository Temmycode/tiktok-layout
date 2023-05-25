import 'package:flutter/material.dart';

class FollowerSection extends StatelessWidget {
  const FollowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // no of people user is following
          Column(
            children: [
              Text(
                "1024",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Following",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          // the no of followers
          Column(
            children: [
              Text(
                "519.5K",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Followers",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          // the no of followers
          Column(
            children: [
              Text(
                "6.2M",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Likes",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
