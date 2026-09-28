import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:statefulclickcounter/app.dart';
import 'package:statefulclickcounter/core/app_strings.dart';

void main() {
  testWidgets('counter starts at 0 and increments on tap', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.text(AppStrings.pageTitle), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
