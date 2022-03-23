import 'package:flutter/material.dart';

import 'presentation/theme/themes.dart';
import 'router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = routerGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Themes.light,
      darkTheme: Themes.dark,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
