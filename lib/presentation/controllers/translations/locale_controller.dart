import 'dart:ui' as ui hide Locale;

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'locale_state.dart';
part 'locale_providers.dart';
part 'locale_utils.dart';

final localeControllerProvider =
    StateNotifierProvider<LocaleController, LocaleState>((ref) {
  final platformLocale = ref.watch(platformLocaleProvider);
  final supportedLocales = ref.watch(supportedLocalesProvider);

  return LocaleController(
    platformLocale: platformLocale,
    supportedLocales: supportedLocales,
  );
});

class LocaleController extends StateNotifier<LocaleState> {
  final Locale platformLocale;
  final List<Locale> supportedLocales;

  LocaleController({
    required this.platformLocale,
    required this.supportedLocales,
  }) : super(const LocaleState());

  Future<void> initialize() async {
    final fromStorageSuccess = await restoreFromStorage();
    if (!fromStorageSuccess) {
      await setLocale(platformLocale);
    }
  }

  Future<bool> restoreFromStorage() async {
    try {
      final storedState = await _loadFromStorage();

      if (storedState == null) {
        return false;
      }

      debugPrint('State found in storage: ${storedState.locale.toString()}');
      state = storedState;
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Update the state with the new locale.
  Future<void> setLocale(Locale locale) async {
    if (supportedLocales.contains(locale)) {
      state = state.copyWith(locale: locale);
      await _saveToStorage(state);
      return;
    }

    final closestLocale = supportedLocales.firstWhereOrNull(
      (e) => e.languageCode == locale.languageCode,
    );
    if (closestLocale != null) {
      state = state.copyWith(locale: closestLocale);
      await _saveToStorage(state);
      return;
    }
  }

  /// Currently this method doesn't do anything, you might want to add some
  /// logic to handle the locale change.
  Future<void> _saveToStorage(LocaleState state) async {
    // TODO: Add code to save localy here.
  }

  /// Currently this method doesn't do anything, you might want to add some
  /// logic to handle the locale change.
  Future<LocaleState?> _loadFromStorage() async {
    // TODO: Add code to load localy here.
    return null;
  }
}
