import 'package:flutter/material.dart';
import 'dart:math';

class PageReveal extends StatelessWidget {
  final double percentReveal;
  final Widget child;

  PageReveal({
    this.percentReveal,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return new ClipOval(
      clipper: new CircleRevealClipper(percentReveal),
      child: child,
    );
  }
}

class CircleRevealClipper extends CustomClipper<Rect> {
  final double percentReveal;

  CircleRevealClipper(
    this.percentReveal,
  );

  @override
  Rect getClip(Size size) {
    final epicenter = new Offset(size.width / 2, size.height / 2);
    final radius = size.width / this.percentReveal;
    final diameter = 2 * radius;

    return new Rect.fromLTWH(
        epicenter.dx - radius, epicenter.dy - radius, diameter, diameter);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
