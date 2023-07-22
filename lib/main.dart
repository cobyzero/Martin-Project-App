import 'package:flutter/material.dart';
import 'package:martin_project_app/config/router/router.dart';
import 'package:martin_project_app/config/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      theme: themeData,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
