import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderWindows extends StatelessWidget {
  const RenderWindows(
      {super.key,
      required this.child,
      this.appbar,
      this.padding = 0.0,
      this.backgroundColor = bgColor});

  final Widget child;
  final PreferredSizeWidget? appbar;
  final double padding;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: padding, left: padding, right: padding),
        child: child,
      )),
    );
  }
}
