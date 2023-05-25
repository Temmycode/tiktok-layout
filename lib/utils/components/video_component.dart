import 'package:flutter/material.dart';

class VideoComponent extends StatelessWidget {
  const VideoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Stack(children: [
        Positioned(
          left: 10,
          bottom: 10,
          child: Row(
            children: [
              const Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              // no of likes for the user
              Text(
                "6.7M",
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
        )
      ]),
    );
  }
}
