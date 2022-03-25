import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/font.dart';

void main() {
  group('Typography rendering', () {
    const typoText = 'Hello!';

    goldenTest(
      'Typography Golden Tests',
      fileName: 'typography',
      pumpBeforeTest: (_) async {
        TestWidgetsFlutterBinding.ensureInitialized();
        await loadTestFonts();
      },
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'appBarTheme.titleTextStyle',
            child: Builder(
              builder: (context) {
                return Text(
                  typoText,
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                );
              },
            ),
          ),
          GoldenTestScenario(
            name: 'textTheme.headline4',
            child: Builder(
              builder: (context) {
                return Text(
                  typoText,
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ),
        ],
      ),
    );
  });
}
