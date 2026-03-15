# 🌿 Aura Wellness - Flutter App

Beautiful and accessible wellness tracking application built with Flutter and Material Design 3.

## 📱 Features

- **Wellness Dashboard**: Real-time health metrics and wellness score
- **Activity Tracking**: Monitor steps, sleep, hydration, and mindfulness
- **Material Design 3**: Modern, accessible UI with dark mode support
- **Responsive Design**: Works seamlessly across mobile devices
- **Performance Optimized**: Smooth animations and efficient state management

## 🎨 Design System

### Colors
- **Primary**: `#2bee8c` - Main action color
- **Secondary**: `#0EA5E9` - Information and secondary actions
- **Tertiary**: `#F97316` - Accent color
- **Background Light**: `#F6F8F7`
- **Background Dark**: `#102219`

### Typography
- **Font Family**: Lexend
- **Weights**: Light (300), Regular (400), Medium (500), SemiBold (600), Bold (700)

### Component Spacing
- 8px grid system for consistency
- Rounded corners: 1rem (16px) default, 2rem (24px) large

## 📋 Project Structure

```
flutter_app/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── theme/
│   │   └── app_theme.dart       # Material Design 3 theme configuration
│   ├── screens/
│   │   └── dashboard_screen.dart # Main dashboard screen
│   └── widgets/
│       └── wellness_widgets.dart # Reusable custom widgets
├── assets/
│   └── images/                   # Image assets
├── pubspec.yaml                  # Dependencies and configuration
└── analysis_options.yaml         # Linting rules

## 🚀 Getting Started

### Prerequisites
- Flutter 3.0 or higher
- Dart 3.0 or higher
- Android Studio / Xcode (for emulators)

### Installation

1. **Clone the repository**
```bash
cd aura-wellness/flutter_app
```

2. **Get dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

4. **Run on specific device**
```bash
flutter run -d <device_id>
```

## 📦 Dependencies

- **google_fonts**: Google Fonts integration
- **cupertino_icons**: iOS-style icons

## 🧪 Testing

While this is the UI implementation, here's how to structure tests:

```bash
# Run unit tests
flutter test

# Run with coverage
flutter test --coverage
```

## 🔄 State Management

Currently using StatefulWidget for simplicity. For scalability, consider:
- **BLoC Pattern**: For complex business logic
- **Riverpod**: Modern state management alternative
- **GetX**: Simple and productive state management

## 🎯 Architecture

Following Clean Architecture principles:

- **Presentation Layer**: Screens and widgets
- **Domain Layer**: Business logic and use cases (to be implemented)
- **Data Layer**: API and local storage (to be implemented)

## ♿ Accessibility Features

- ✅ Proper contrast ratios (WCAG AA compliant)
- ✅ Semantic widgets for screen readers
- ✅ Touch targets minimum 44px
- ✅ Keyboard navigation support
- ✅ Dark mode support

## 📱 Supported Platforms

- [x] iOS (13.0+)
- [x] Android (7.0+)
- [ ] Web (in progress)

## 🛠️ Build Commands

### Development
```bash
flutter run --debug
```

### Release
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 📸 Screenshots

### Dashboard Screen
Shows:
- User greeting and profile
- Wellness score card (85 - Excellent)
- Activity grid (Steps, Sleep, Hydration, Mindfulness)
- Quick suggestion card
- Bottom navigation bar

## 🔐 Code Quality

- **Analysis**: `flutter analyze`
- **Format**: `flutter format lib/`
- **Lint Rules**: See `analysis_options.yaml`

## 📚 Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Material Design 3](https://m3.material.io)
- [Clean Architecture](https://resocoder.com/flutter-clean-architecture)

## 👨‍💻 Development Team

- **Carlos Pomadev** - Lead Developer
- Email: carlospomadev@gmail.com

## 📄 License

This project is part of Aura Wellness ecosystem.

## 🤝 Contributing

1. Create a feature branch (`git checkout -b feature/AmazingFeature`)
2. Commit changes (`git commit -m 'Add AmazingFeature'`)
3. Push to branch (`git push origin feature/AmazingFeature`)
4. Open a Pull Request

## 📞 Support

For bugs and feature requests, please open an issue in the project repository.

---

*Built with ❤️ using Flutter and Material Design 3*
