import 'package:flutter/material.dart';

/// Central place for the application's visual identity.
abstract final class AppTheme {
  static ThemeData get light => ThemeData(
        primarySwatch: Colors.blue,
      );

  /// Style of the counter value displayed on screen.
  static const TextStyle counterValue = TextStyle(fontSize: 25);
}
