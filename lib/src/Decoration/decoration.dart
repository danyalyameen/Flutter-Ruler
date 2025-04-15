import 'package:flutter/material.dart';

class LineDecoration {
  final SmallLineDecoration? smallLineDecoration;
  final MediumLineDecoration? mediumLineDecoration;
  final LargeLineDecoration? largeLineDecoration;

  const LineDecoration({
    this.smallLineDecoration,
    this.mediumLineDecoration,
    this.largeLineDecoration,
  });
}

class SmallLineDecoration {
  final Color? color;
  final double? lineWidth;
  final double lineHeight;

  const SmallLineDecoration({
    this.lineWidth = 2,
    this.lineHeight = 30,
    this.color = Colors.grey,
  });
}

class MediumLineDecoration {
  final Color? color;
  final double? lineWidth;
  final double lineHeight;

  const MediumLineDecoration({
    this.lineWidth = 3,
    this.lineHeight = 50,
    this.color = Colors.grey,
  });
}

class LargeLineDecoration {
  final Color? color;
  final double? lineWidth;
  final double lineHeight;

  const LargeLineDecoration({
    this.lineWidth = 3,
    this.lineHeight = 70,
    this.color = Colors.grey,
  });
}

class PointerDecoration {
  final Color? color;
  final double? pointerWidth;
  final double? pointerHeight;
  final double? borderRadius;

  const PointerDecoration({
    this.borderRadius = 10,
    this.pointerWidth = 8,
    this.pointerHeight = 120,
    this.color = Colors.orange,
  });
}
