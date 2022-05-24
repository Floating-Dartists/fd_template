part of 'locale_controller.dart';

const fallbackLocale = Locale('en');

@immutable
class LocaleState extends Equatable {
  final Locale locale;

  const LocaleState({this.locale = fallbackLocale});

  @override
  List<Object> get props => [locale];

  LocaleState copyWith({
    Locale? locale,
  }) {
    return LocaleState(
      locale: locale ?? this.locale,
    );
  }
}
