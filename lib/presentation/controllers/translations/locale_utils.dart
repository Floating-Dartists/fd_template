part of 'locale_controller.dart';

extension TranslateLocaleExtension on Locale {
  /// Returns the locale name in its corresponding language.
  String translatedLocaleName() {
    switch (toLanguageTag()) {
      case 'de-DE':
        return 'Deutsh';
      case 'en-US':
        return 'English';
      case 'es-ES':
        return 'Español';
      case 'fr-FR':
        return 'Français';
      case 'it-IT':
        return 'Italiano';
      case 'ja-JP':
        return '日本語';
      case 'ko-KR':
        return '한국어';
      case 'pt-BR':
        return 'Português';
      case 'ru-RU':
        return 'Русский';
      case 'zh-CN':
        return '简体中文';
      case 'zh-TW':
        return '繁體中文';
      default:
        return 'N/A';
    }
  }
}
