import 'package:flutter/material.dart';
import 'package:flutter_ruler/src/Decoration/decoration.dart';

class LargeLine extends StatelessWidget {
  final LargeLineDecoration lineDecoration;
  const LargeLine({super.key, required this.lineDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: lineDecoration.lineHeight,
      width: lineDecoration.lineWidth,
      color: lineDecoration.color,
    );
  }
}
