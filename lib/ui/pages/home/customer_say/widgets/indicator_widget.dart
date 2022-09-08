import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class IndicatorWidget extends StatelessWidget {
  final StreamController<int> indicatorIndicator;
  final int count;

  const IndicatorWidget({
    Key? key,
    required this.indicatorIndicator,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("IndicatorWidget $count");
    return SizedBox(
      height: 20,
      child: StreamBuilder<int>(
        initialData: 0,
        stream: indicatorIndicator.stream,
        builder: (context, snapshot) {
          final int currentIndex = snapshot.requireData;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: count,
            itemBuilder: (context, index) {
              return Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: currentIndex == index
                        ? context.colorScheme.primary
                        : context.colorScheme.primaryContainer),
              );
            },
          );
        },
      ),
    );
  }
}
