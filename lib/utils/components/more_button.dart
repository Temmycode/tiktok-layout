import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  final VoidCallback? more;
  const MoreButton({super.key, required this.more});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: more,
      child: Ink(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: Colors.black26,
            width: 1.0,
          ),
        ),
        child: const Center(
          child: Icon(Icons.arrow_drop_down),
        ),
      ),
    );
  }
}
