import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderWindows extends StatelessWidget {
  const RenderWindows({
    super.key,
    required this.child,
    this.appbar,
    this.padding = 0.0,
    this.backgroundColor = bgColor,
    this.drawer,
    this.keyScaffold,
    this.bottomNavigationBar,
  });

  final Widget child;
  final PreferredSizeWidget? appbar;
  final double padding;
  final Color backgroundColor;
  final Widget? drawer;
  final Key? keyScaffold;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      key: keyScaffold,
      drawer: drawer,
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
