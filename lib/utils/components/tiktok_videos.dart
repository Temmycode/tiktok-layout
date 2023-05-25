import 'package:flutter/material.dart';
import 'package:tiktok/utils/components/video_component.dart';

class UserVideoSection extends StatelessWidget {
  const UserVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        return const VideoComponent();
      },
    );
  }
}
