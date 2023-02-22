import 'package:flutter/material.dart';

class MyPixel extends StatelessWidget {
  final innerColor;
  final outerColor;
  final child;

  MyPixel({this.innerColor, this.child, this.outerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.all(5),
          color: innerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: innerColor,
              child: Center(child: child),
            ),
          )
        ),
      ),
    );
  }
}
