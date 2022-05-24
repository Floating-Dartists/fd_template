import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
        Text(AppLocalizations.of(context)!.lightMode),
        Switch(
          value: isDark,
          onChanged: (_) => controller.switchThemeMode(brightness),
        ),
        Text(AppLocalizations.of(context)!.darkMode),
      ],
    );
  }
}
