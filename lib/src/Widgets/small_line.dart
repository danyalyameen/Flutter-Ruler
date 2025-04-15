import 'package:flutter/material.dart';
import 'package:flutter_ruler/src/Decoration/decoration.dart';

class SmallLine extends StatelessWidget {
  final SmallLineDecoration lineDecoration;
  const SmallLine({super.key, required this.lineDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: lineDecoration.lineHeight,
      width: lineDecoration.lineWidth,
      color: lineDecoration.color,
    );
  }
}
