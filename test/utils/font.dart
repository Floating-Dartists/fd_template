import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> loadTestFonts() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Add all the fonts you want to load for your tests here.
  await _loadFamily(
    'Roboto',
    [
      'assets/fonts/Roboto/Roboto-Black.ttf',
      'assets/fonts/Roboto/Roboto-Bold.ttf',
      'assets/fonts/Roboto/Roboto-Light.ttf',
      'assets/fonts/Roboto/Roboto-Medium.ttf',
      'assets/fonts/Roboto/Roboto-Regular.ttf',
      'assets/fonts/Roboto/Roboto-Thin.ttf',
    ],
  );
}

Future<void> _loadFamily(String name, List<String> assets) async {
  final fontLoader = FontLoader(name);

  for (final asset in assets) {
    final bytes = rootBundle.load(asset);
    fontLoader.addFont(bytes);
  }
  await fontLoader.load();
}
