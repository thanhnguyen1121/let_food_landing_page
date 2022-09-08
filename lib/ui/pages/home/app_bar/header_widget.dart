import 'package:flutter/material.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

import 'underline_tab_indicator_custom.dart';

class HeaderWidget extends StatefulWidget {
  final List<String> titleList;
  final TabController tabController;
  static const routeName = 'HeaderWidget';

  const HeaderWidget(
      {Key? key, required this.titleList, required this.tabController})
      : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  static const tag = 'HeaderWidget';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      tabs: widget.titleList
          .map((e) => Tab(
                child: Text(e),
              ))
          .toList(),
      labelStyle:
          context.textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w500),
      labelColor: Colors.black,
      isScrollable: true,
      labelPadding: const EdgeInsets.symmetric(horizontal: 18),
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
      indicatorColor: context.colorScheme.primary,
      indicatorWeight: 4,
      indicator: UnderlineTabIndicatorCustom(
          color: context.colorScheme.primary, radius: 4, indicatorHeight: 4),
      indicatorSize: TabBarIndicatorSize.label,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      unselectedLabelColor: context.colorScheme.secondary,
      unselectedLabelStyle:
          context.textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w500),
    );
  }
}
