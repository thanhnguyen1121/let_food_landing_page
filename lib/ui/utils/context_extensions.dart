import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  MediaQueryData get mediaQueryData => MediaQuery.of(this);

  Size get size => MediaQuery.of(this).size;

  ///Show loading overlay when do sth (submit action,,,,)
  Future<T> runTask<T>(Future<T> task, {Stream<double>? percent}) async {
    var overlayEntry = OverlayEntry(
      builder: (context) => Container(
        alignment: Alignment.center,
        child: const CupertinoActivityIndicator(),
      ),
    );
    Overlay.of(this)?.insert(overlayEntry);
    try {
      final data = await task;
      overlayEntry.remove();
      return data;
    } catch (error) {
      overlayEntry.remove();
      rethrow;
    }
  }
}
