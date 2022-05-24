import 'package:flutter/material.dart';

import 'widgets/locale_dropdown.dart';
import 'widgets/theme_switcher.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            LocaleDropdown(),
            ThemeSwitcher(),
          ],
        ),
      ),
    );
  }
}
