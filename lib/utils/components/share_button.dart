import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  final VoidCallback? message;
  const MessageButton({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: message,
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
          child: Icon(Icons.send_outlined),
        ),
      ),
    );
  }
}
