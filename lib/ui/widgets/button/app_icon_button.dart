import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class AppIconButton extends StatelessWidget {
  final Color color;
  final Widget icon;

  const AppIconButton({
    Key? key,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 12,
            color: context.colorScheme.secondaryContainer.withOpacity(0.15),
          )
        ],
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}
