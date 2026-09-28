import 'package:flutter/material.dart';

import '../../core/app_strings.dart';
import '../../core/app_theme.dart';
import 'counter_controller.dart';

/// Home screen: displays how many times the button has been pressed.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterController _controller = CounterController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.pageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(AppStrings.counterLabel),
            ListenableBuilder(
              listenable: _controller,
              builder: (context, _) => Semantics(
                liveRegion: true,
                child: Text(
                  '${_controller.value}',
                  style: AppTheme.counterValue,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.increment,
        tooltip: AppStrings.incrementTooltip,
        child: const Icon(Icons.add),
      ),
    );
  }
}
