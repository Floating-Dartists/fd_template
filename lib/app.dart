import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/controllers/themes/theme_controller.dart';
import 'presentation/controllers/translations/locale_controller.dart';
import 'presentation/theme/themes.dart';
import 'router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final _router = routerGenerator();

  @override
  Widget build(BuildContext context) {
    // Rebuild on locale change
    final locale =
        ref.watch(localeControllerProvider.select((value) => value.locale));
    final supportedLocales = ref.read(supportedLocalesProvider);

    // Rebuild on theme change
    final themeMode =
        ref.watch(themeControllerProvider.select((value) => value.themeMode));

    return MaterialApp.router(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: supportedLocales,
      locale: locale,
    );
  }
}
