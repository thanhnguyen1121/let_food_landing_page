import 'package:flutter/material.dart';

class IconInkResponseButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double? padding;
  final double? radius;

  const IconInkResponseButton({
    Key? key,
    required this.child,
    this.onTap,
    this.padding,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkResponse(
        onTap: () {
          onTap?.call();
        },
        radius: radius,
        child: Container(
          padding: EdgeInsets.all(padding ?? 24),
          child: child,
        ),
      ),
    );
  }
}
