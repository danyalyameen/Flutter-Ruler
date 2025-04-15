import 'package:flutter/material.dart';
import 'package:flutter_ruler/src/Widgets/large_line.dart';
import 'package:flutter_ruler/src/Widgets/medium_line.dart';
import 'package:flutter_ruler/src/Widgets/small_line.dart';
import 'package:flutter_ruler/src/Decoration/decoration.dart';

class FlutterRuler extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final double? rulerWidth;
  final double? rulerHeight;
  final LineDecoration? lineDecoration;
  final PointerDecoration? pointerDecoration;
  final TextStyle? numberTextStyle;
  const FlutterRuler({
    super.key,
    this.lineDecoration,
    this.rulerWidth,
    this.rulerHeight,
    required this.minValue,
    required this.maxValue,
    this.pointerDecoration,
    this.numberTextStyle,
  });

  @override
  State<FlutterRuler> createState() => _FlutterRulerState();
}

class _FlutterRulerState extends State<FlutterRuler> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.rulerWidth ?? 300,
      height: widget.rulerHeight ?? 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: widget.rulerWidth ?? 300,
              height: widget.rulerHeight ?? 120,
              child: ListView.builder(
                controller: _controller,
                itemCount: (widget.maxValue - widget.minValue) * 10,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 100),
                        padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index % 10 == 0 ||
                                    index ==
                                        (widget.maxValue - widget.minValue) *
                                                10 -
                                            1
                                ? LargeLine(
                                  lineDecoration:
                                      widget.lineDecoration == null ||
                                              widget
                                                      .lineDecoration
                                                      ?.largeLineDecoration ==
                                                  null
                                          ? LargeLineDecoration()
                                          : widget
                                              .lineDecoration!
                                              .largeLineDecoration!,
                                )
                                : index % 5 == 0
                                ? MediumLine(
                                  lineDecoration:
                                      widget.lineDecoration == null ||
                                              widget
                                                      .lineDecoration
                                                      ?.mediumLineDecoration ==
                                                  null
                                          ? MediumLineDecoration()
                                          : widget
                                              .lineDecoration!
                                              .mediumLineDecoration!,
                                )
                                : SmallLine(
                                  lineDecoration:
                                      widget.lineDecoration == null ||
                                              widget
                                                      .lineDecoration
                                                      ?.smallLineDecoration ==
                                                  null
                                          ? SmallLineDecoration()
                                          : widget
                                              .lineDecoration!
                                              .smallLineDecoration!,
                                ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      index % 10 == 0 ||
                              index ==
                                  (widget.maxValue - widget.minValue) * 10 - 1
                          ? Text(
                            '${index == (widget.maxValue - widget.minValue) * 10 - 1 ? widget.maxValue : index ~/ 10 + widget.minValue}',
                            style:
                                widget.numberTextStyle ??
                                TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                          )
                          : const Text(''),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            width:
                widget.pointerDecoration == null ||
                        widget.pointerDecoration!.pointerWidth == null
                    ? PointerDecoration().pointerWidth
                    : widget.pointerDecoration!.pointerWidth,
            height:
                widget.pointerDecoration == null ||
                        widget.pointerDecoration!.pointerHeight == null
                    ? PointerDecoration().pointerHeight
                    : widget.pointerDecoration!.pointerHeight,
            decoration: BoxDecoration(
              color:
                  widget.pointerDecoration == null ||
                          widget.pointerDecoration!.color == null
                      ? PointerDecoration().color
                      : widget.pointerDecoration!.color,
              borderRadius: BorderRadius.circular(
                widget.pointerDecoration == null ||
                        widget.pointerDecoration!.borderRadius == null
                    ? PointerDecoration().borderRadius!
                    : widget.pointerDecoration!.borderRadius!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
