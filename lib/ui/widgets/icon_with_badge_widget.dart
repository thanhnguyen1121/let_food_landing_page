import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class IconWithBadgeWidget extends StatelessWidget {
  final Widget icon;
  final int count;

  const IconWithBadgeWidget({Key? key, required this.icon, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(),
        icon,
        Positioned.fill(
          top: -25,
          left: 16,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8)),
              alignment: Alignment.center,
              child: Text(
                count.toString(),
                style: context.textTheme.caption?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
