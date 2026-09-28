import 'package:flutter/foundation.dart';

/// Holds the counter state and notifies listeners when it changes.
///
/// Keeping the logic outside of the widget makes it reusable and
/// unit-testable without any UI.
class CounterController extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}
