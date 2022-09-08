import 'package:flutter/material.dart';

class UnderlineTabIndicatorCustom extends Decoration {
  final double? radius;

  final Color color;

  final double? indicatorHeight;

  const UnderlineTabIndicatorCustom({
    required this.color,
    this.radius,
    this.indicatorHeight,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      indicatorHeight,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final UnderlineTabIndicatorCustom decoration;
  final double? radius;
  final Color color;
  final double? indicatorHeight;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.indicatorHeight,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos =
        offset.dy + configuration.size!.height - (indicatorHeight ?? 8) / 2;
    paint.color = color;

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width,
        height: indicatorHeight ?? 4,
      ),
      topLeft: Radius.circular(radius ?? 8),
      topRight: Radius.circular(radius ?? 8),
      bottomLeft: Radius.circular(radius ?? 8),
      bottomRight: Radius.circular(radius ?? 8),
    );

    canvas.drawRRect(fullRect, paint);
  }
}
