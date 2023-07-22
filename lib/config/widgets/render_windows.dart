import 'package:flutter/material.dart';

class RenderWindows extends StatelessWidget {
  const RenderWindows({
    super.key,
    required this.child,
    this.appbar,
    this.padding = 0.0,
  });

  final Widget child;
  final PreferredSizeWidget? appbar;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(padding),
        child: child,
      )),
    );
  }
}
