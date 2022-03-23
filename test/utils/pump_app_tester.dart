import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  /// Call [pumpWidget] with the given [child] wrapped inside a [MaterialApp].
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(MaterialApp(home: widget));
  }
}
