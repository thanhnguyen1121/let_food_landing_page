import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class AppButton extends StatelessWidget {
  final Widget? icon;
  final String title;
  final VoidCallback? onPress;

  const AppButton({
    Key? key,
    required this.title,
    this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.primary,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          onPress?.call();
        },
        splashColor: Colors.white.withOpacity(0.7),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Wrap(
                  children: [
                    icon!,
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                )
              else
                const SizedBox.shrink(),
              Text(
                title,
                style: context.textTheme.button?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
