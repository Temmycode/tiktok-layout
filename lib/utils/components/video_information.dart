import 'package:flutter/material.dart';

class VideoInformation extends StatelessWidget {
  final String? accountName;
  final String? vidoeName;
  final String? songTitle;
  const VideoInformation({
    super.key,
    this.accountName,
    this.vidoeName,
    this.songTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "J Cubed",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            "Mission passed😁",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "See translation",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.normal),
          ),
          // handle the music section
        ],
      ),
    );
  }
}
