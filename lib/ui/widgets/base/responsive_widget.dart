import 'package:flutter/material.dart';
import 'package:flutter_web/constants/constants.dart';

typedef WebUIRender = Widget Function();
typedef MobileUIRender = Widget Function();
typedef TabletUIRender = Widget Function();

class ResponsiveWidget extends StatefulWidget {
  static const routeName = 'ResponsiveWidget';
  final WebUIRender webUIRender;
  final MobileUIRender mobileUIRender;
  final TabletUIRender tabletUIRender;

  const ResponsiveWidget({
    Key? key,
    required this.webUIRender,
    required this.mobileUIRender,
    required this.tabletUIRender,
  }) : super(key: key);

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  static const tag = 'ResponsiveWidget';

  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    if (widthOfScreen < Constants.mobileBreakPoint) {
      return widget.mobileUIRender();
    } else if (widthOfScreen >= Constants.mobileBreakPoint &&
        widthOfScreen < Constants.tableBreakPoint) {
      return widget.tabletUIRender();
    } else {
      return widget.webUIRender();
    }
  }
}
