# Click Counter

A simple Flutter app that counts button presses, structured the way a
production project should be.

## Project structure

```
lib/
├── main.dart                        # Entry point
├── app.dart                         # MaterialApp configuration
├── core/
│   ├── app_strings.dart             # User-facing texts
│   └── app_theme.dart               # Theme & text styles
└── features/counter/
    ├── counter_controller.dart      # State & logic (ChangeNotifier)
    └── counter_page.dart            # UI
test/
├── counter_controller_test.dart     # Unit tests
└── widget_test.dart                 # Widget test
```

## Run

```bash
flutter pub get
flutter run
```

## Quality checks

```bash
flutter analyze
flutter test
```
