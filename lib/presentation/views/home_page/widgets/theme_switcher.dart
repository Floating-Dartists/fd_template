import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/themes/theme_controller.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = Theme.of(context).brightness;
    final isDark = brightness == Brightness.dark;
    final controller = ref.read(themeControllerProvider.notifier);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.sunny),
        Switch(
          value: isDark,
          onChanged: (_) => controller.switchThemeMode(brightness),
        ),
        const Icon(Icons.brightness_3),
      ],
    );
  }
}
