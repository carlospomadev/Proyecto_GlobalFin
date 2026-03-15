# 🚀 Quick Start Guide - Aura Wellness Flutter

## Prerequisites

- Flutter SDK 3.0+ ([Install](https://flutter.dev/docs/get-started/install))
- Dart 3.0+ (comes with Flutter)
- Git
- IDE: VS Code, Android Studio, or IntelliJ

## Setup Instructions

### 1. Clone and Navigate
```bash
cd aura-wellness/flutter_app
```

### 2. Get Dependencies
```bash
flutter pub get
```

### 3. Run the App
```bash
# Run on default device/emulator
flutter run

# Run on specific device
flutter run -d <device_id>

# List available devices
flutter devices

# Run in debug mode with verbose logging
flutter run -v
```

### 4. Hot Reload
During development, use hot reload to see changes instantly:

Keyboard Shortcut:
- **Linux/Windows**: `r` (hot reload) or `R` (full restart)
- **macOS**: Same as above

Or use IDE buttons:
- VS Code: Click "Hot Reload" button or press `Ctrl+F5`
- Android Studio: Flash icon in toolbar

## Project Structure Quick Reference

```
flutter_app/
├── lib/
│   ├── main.dart              # App entry point
│   ├── theme/
│   │   └── app_theme.dart     # Design system
│   ├── screens/
│   │   └── dashboard_screen.dart
│   └── widgets/
│       └── wellness_widgets.dart
├── assets/                    # Images, fonts
├── pubspec.yaml              # Dependencies
└── docs/                      # Documentation
```

## Common Commands

### Development
```bash
# Get dependencies
flutter pub get

# Format code
flutter format lib/

# Analyze code
flutter analyze

# Run tests
flutter test

# Clean build
flutter clean
```

### Building

#### iOS
```bash
# Debug
flutter run

# Release
flutter build ios --release
```

#### Android
```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# App Bundle
flutter build appbundle --release
```

#### Web
```bash
flutter build web --release
```

## Directory Navigation

### Add a New Widget
1. Create file in `lib/widgets/your_widget.dart`
2. Import in screen: `import '../widgets/your_widget.dart';`
3. Use in build: `YourWidget()`

### Add a New Screen
1. Create file in `lib/screens/your_screen.dart`
2. Import in `main.dart`
3. Add route in navigation

### Customize Colors
Edit `lib/theme/app_theme.dart` - Update `AppTheme` class colors.

### Customize Fonts
Edit `pubspec.yaml` - Add fonts in `flutter:` section.

## Widget Development Tips

### Creating a Stateless Widget
```dart
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello'),
    );
  }
}
```

### Creating a Stateful Widget
```dart
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increment,
      child: Text('$_counter'),
    );
  }
}
```

## Debugging

### Print Debugging
```dart
print('Debug: $value'); // Simple print
debugPrint('Debug: $value'); // Flutter's print
```

### Device Logging
```bash
# View device logs
flutter logs

# Filter logs
flutter logs | grep "MyApp"
```

### Inspector
```bash
# Open Flutter Inspector
flutter run --debug

# Then press 'i' in terminal when app is running
```

### Dart DevTools
```bash
# Start DevTools
flutter pub global run devtools

# Then visit: http://localhost:9100
```

## Performance Tips

1. Use `const` constructor where possible:
```dart
const Container()  // Good
Container()        // Avoid
```

2. Avoid rebuilding unnecessarily:
```dart
// Bad - rebuilds parent and children
Widget build(BuildContext context) {
  return MyExpensiveWidget();
}

// Good - const prevents rebuilds
const MyExpensiveWidget()
```

3. Use `ListView.builder` for large lists:
```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ItemWidget(items[index]),
)
```

## Common Issues & Solutions

### Issue: App won't build
```bash
# Solution
flutter clean
flutter pub get
flutter run
```

### Issue: Hot reload not working
```bash
# Full restart
ctrl+shift+w (or cmd+shift+w on Mac)
```

### Issue: Dependencies not updating
```bash
flutter pub upgrade
```

### Issue: App crashes on startup
Check the error logs:
```bash
flutter run -v  # Verbose output shows full error stack
```

## Resources

### Official Documentation
- [Flutter Docs](https://flutter.dev/docs)
- [Material Design](https://m3.material.io)
- [Dart Guide](https://dart.dev/guides)

### Learning Resources
- [Flutter Codelabs](https://flutter.dev/codelabs)
- [Dart Pad](https://dartpad.dev)
- [Flutter Community](https://flutter.dev/community)

### Useful Packages
- `google_fonts` - Google Fonts integration (already included)
- `provider` - Simple state management
- `dio` - HTTP client
- `hive` - Local storage
- `freezed` - Code generation

## Next Steps

1. ✅ Run the app successfully
2. ✅ Explore the Dashboard screen
3. ✅ Try hot reload to see changes instantly
4. 📝 Start building additional screens
5. 🎨 Customize colors and fonts
6. 📦 Add your own widgets and features

## IDE Setup

### VS Code Extensions
Recommended:
- Flutter
- Dart
- Awesome Flutter Snippets

### Android Studio
- Built-in Flutter and Dart plugins
- Use "Run" menu for easy launch

### IntelliJ
- Install Flutter plugin
- Run → Run 'main.dart'

---

Need help? Check:
- This guide
- [ARCHITECTURE.md](./ARCHITECTURE.md)
- [Official Flutter docs](https://flutter.dev/docs)

Happy coding! 🎉
