import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class ItemHowItWorkWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String content;

  const ItemHowItWorkWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          icon,
          const SizedBox(
            height: 24,
          ),
          Text(
            title,
            style: context.textTheme.subtitle1?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: context.textTheme.headline6?.copyWith(
                color: context.colorScheme.secondary,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
