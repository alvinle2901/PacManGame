import 'package:flutter/material.dart';

class MyPixel extends StatelessWidget {
  final Color innerColor;
  final Color outerColor;
  final child;

  const MyPixel(
      {super.key,
      required this.innerColor,
      required this.outerColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.all(12),
          color: outerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: innerColor,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
