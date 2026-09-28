import 'package:flutter/material.dart';

import 'core/app_strings.dart';
import 'core/app_theme.dart';
import 'features/counter/counter_page.dart';

/// Root widget of the application.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const CounterPage(),
    );
  }
}
