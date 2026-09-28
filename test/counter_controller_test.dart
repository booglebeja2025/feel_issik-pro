import 'package:flutter_test/flutter_test.dart';
import 'package:statefulclickcounter/features/counter/counter_controller.dart';

void main() {
  group('CounterController', () {
    test('starts at zero', () {
      expect(CounterController().value, 0);
    });

    test('increment increases the value and notifies listeners', () {
      final controller = CounterController();
      var notifications = 0;
      controller.addListener(() => notifications++);

      controller
        ..increment()
        ..increment();

      expect(controller.value, 2);
      expect(notifications, 2);
    });
  });
}
