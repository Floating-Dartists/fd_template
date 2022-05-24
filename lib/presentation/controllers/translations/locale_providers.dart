part of 'locale_controller.dart';

final platformLocaleProvider = Provider<Locale>((ref) {
  final platformLocale = ui.window.locale;
  debugPrint('Retrieved platform locale: ${platformLocale.toString()}');
  return platformLocale;
});

final supportedLocalesProvider = Provider<List<Locale>>((ref) {
  return const [Locale('en', 'US'), Locale('fr', 'FR')];
});
