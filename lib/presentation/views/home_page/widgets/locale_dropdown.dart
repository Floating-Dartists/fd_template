import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/translations/locale_controller.dart';

class LocaleDropdown extends ConsumerWidget {
  const LocaleDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(localeControllerProvider.notifier);
    final state = ref.watch(localeControllerProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(AppLocalizations.of(context)!.language),
        const SizedBox(width: 8),
        DropdownButton<Locale>(
          value: state.locale,
          items: controller.supportedLocales
              .map<DropdownMenuItem<Locale>>(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.translatedLocaleName()),
                ),
              )
              .toList(),
          onChanged: (Locale? locale) {
            if (locale != null) {
              controller.setLocale(locale);
            }
          },
        ),
      ],
    );
  }
}
