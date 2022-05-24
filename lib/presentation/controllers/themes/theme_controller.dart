import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'theme_state.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeState>((ref) {
  return ThemeController();
});

class ThemeController extends StateNotifier<ThemeState> {
  ThemeController() : super(const ThemeState());

  Future<void> initialize() async {
    final fromStorageSuccess = await restoreFromStorage();
    if (!fromStorageSuccess) {
      await setThemeMode(ThemeMode.system);
    }
  }

  Future<bool> restoreFromStorage() async {
    try {
      final storedState = await _loadFromStorage();
      if (storedState == null) {
        return false;
      }

      debugPrint('State found in storage: ${storedState.themeMode.name}');
      state = storedState;
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = state.copyWith(themeMode: themeMode);
    await _saveToStorage(state);
  }

  Future<void> switchThemeMode(Brightness systemBrightness) async {
    final ThemeMode newMode;
    switch (state.themeMode) {
      case ThemeMode.system:
        if (systemBrightness == Brightness.dark) {
          newMode = ThemeMode.light;
        } else {
          newMode = ThemeMode.dark;
        }
        break;
      case ThemeMode.light:
        newMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        newMode = ThemeMode.light;
        break;
    }
    await setThemeMode(newMode);
  }

  /// Currently this method doesn't do anything, you might want to add some
  /// logic to handle the locale change.
  Future<void> _saveToStorage(ThemeState themeState) async {
    // TODO: Add code to save localy here.
  }

  /// Currently this method doesn't do anything, you might want to add some
  /// logic to handle the locale change.
  Future<ThemeState?> _loadFromStorage() async {
    // TODO: Add code to load localy here.
    return null;
  }
}
