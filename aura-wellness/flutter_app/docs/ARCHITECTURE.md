# 🏗️ Architecture Guide - Aura Wellness Flutter

## Overview

The Aura Wellness Flutter application follows **Clean Architecture** principles with a focus on scalability, maintainability, and testability.

## Current Architecture (MVP Phase)

### Layer Structure

```
┌─────────────────────────────────────┐
│      Presentation Layer             │
│  (Widgets, Screens, UI Logic)      │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│      Domain Layer                   │
│  (Business Logic, Entities, Uses)  │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│      Data Layer                     │
│  (Repositories, Data Sources)      │
└─────────────────────────────────────┘
```

## Directory Structure

```
lib/
├── main.dart                          # Application entry point
│
├── theme/
│   └── app_theme.dart                # Material Design 3 theme configuration
│                                      # - Color palette
│                                      # - Typography
│                                      # - Component styles
│
├── screens/
│   ├── dashboard_screen.dart         # Main dashboard screen
│   ├── metrics_screen.dart           # (to be implemented)
│   ├── profile_screen.dart           # (to be implemented)
│   └── login_screen.dart             # (to be implemented)
│
├── widgets/
│   ├── wellness_widgets.dart         # Custom wellness cards
│   │   - WellnessScoreCard
│   │   - ActivityCard
│   │   - SuggestionCard
│   ├── common_widgets.dart           # (to be implemented)
│   │   - CustomAppBar
│   │   - CustomBottomNav
│   └── dialogs.dart                  # (to be implemented)
│
├── models/                           # (to be implemented)
│   ├── user_model.dart
│   ├── metric_model.dart
│   └── activity_model.dart
│
├── services/                         # (to be implemented)
│   ├── api_service.dart
│   ├── local_storage_service.dart
│   └── analytics_service.dart
│
├── bloc/                             # (to be implemented - if using BLoC)
│   ├── user_bloc.dart
│   ├── metrics_bloc.dart
│   └── activity_bloc.dart
│
└── utils/                            # (to be implemented)
    ├── constants.dart
    ├── validators.dart
    └── extensions.dart
```

## Current Implementation Status

### ✅ Completed
- Theme system with Material Design 3
- Dashboard screen layout
- Custom wellness widgets
- Bottom navigation bar
- Responsive design

### 🔄 In Progress
- Widget refinement and polish

### 📋 To Be Implemented (Phase 2)
- State management (BLoC pattern)
- Data models and repositories
- API integration
- Local storage (Hive)
- Authentication
- Metrics tracking
- Data visualization
- Settings and personalization

## Design Patterns Used

### 1. Widget Composition
- Reusable custom widgets
- Stateless/Stateful separation
- Props-based configuration

### 2. Theme System
- Centralized color management
- Dynamic theme switching (Light/Dark)
- Responsive typography

### 3. Screen Structure
- SafeArea for device safety
- CustomScrollView for nested scrolling
- SliverAppBar for collapsible header

## State Management Strategy

### Current Implementation
Using `StatefulWidget` for simplicity in MVP phase.

### Recommended for Scale-up
```
BLoC Pattern:
- Clean separation of business logic
- Reactive programming with streams
- Easy testing and debugging
- Scalable architecture

Dependencies:
- flutter_bloc
- equatable
```

Or alternative:
```
Riverpod:
- Modern state management
- Functional approach
- Type-safe
- Excellent developer experience
```

## Navigation Structure

### Current Routes
- `/` → Dashboard Screen

### Planned Routes (Phase 2)
- `/login` → Login Screen
- `/dashboard` → Main Dashboard
- `/metrics/{type}` → Detailed Metrics
- `/profile` → User Profile
- `/settings` → App Settings
- `/help` → Help & Support

## Data Flow

### Current (Hardcoded)
```
UI Layer
   ↓
Widgets Display Static Data
```

### Future (with BLoC)
```
UI Layer (Screens/Widgets)
   ↓
Events (User Interactions)
   ↓
BLoC (Business Logic)
   ↓
States (UI Updates)
   ↓
UI Re-renders
```

### Data Source
```
User Interactions
   ↓
API Service (Remote Data)
   ↓
Repository (Data Management)
   ↓
BLoC (Business Logic)
   ↓
UI Update
```

## Best Practices Implemented

### 1. Code Organization
- ✅ Logical folder structure
- ✅ Single responsibility principle
- ✅ Reusable components

### 2. UI/UX
- ✅ Material Design 3 compliance
- ✅ Dark mode support
- ✅ Responsive layouts
- ✅ Accessibility considerations (44px touch targets)

### 3. Performance
- ✅ Efficient rebuilds with StatelessWidget where possible
- ✅ Lazy loading in scrollable lists
- ✅ Asset optimization

### 4. Code Quality
- ✅ Consistent naming conventions
- ✅ Proper widget documentation
- ✅ Linting rules enforced

## Adding New Features

### Example: Adding a New Screen

1. **Create Screen File**
```dart
// lib/screens/new_screen.dart
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Screen')),
      body: Container(),
    );
  }
}
```

2. **Add to Navigation**
```dart
// main.dart
home: NewScreen(),
```

3. **Update Bottom Nav** (if applicable)
```dart
// dashboard_screen.dart
items: const [
  // ... existing items
  BottomNavigationBarItem(
    icon: Icon(Icons.new_icon),
    label: 'New',
  ),
],
```

## Testing Strategy

### Unit Tests
```dart
// test/models/user_model_test.dart
void main() {
  group('UserModel', () {
    test('creates instance correctly', () {
      // test code
    });
  });
}
```

### Widget Tests
```dart
// test/widgets/wellness_card_test.dart
void main() {
  testWidgets('WellnessScoreCard displays correctly', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: WellnessScoreCard(...),
        ),
      ),
    );
    expect(find.byType(WellnessScoreCard), findsOneWidget);
  });
}
```

### Integration Tests
```dart
// integration_test/app_test.dart
void main() {
  testWidgets('app navigates correctly', (tester) async {
    // integration test code
  });
}
```

## Performance Optimization

### Current Optimizations
- ✅ Using `const` constructors where possible
- ✅ Efficient widget rebuilds
- ✅ SingleChildScrollView with proper constraints

### Future Optimizations
- [ ] Image caching and optimization
- [ ] Lazy loading for lists
- [ ] Code splitting and lazy evaluation
- [ ] Performance monitoring

## Accessibility

### Current Implementation
- ✅ Proper contrast ratios (WCAG AA)
- ✅ Minimum 44px touch targets
- ✅ Semantic widget structure
- ✅ Dark mode support

### Future Enhancement
- [ ] SemanticWidget wrapper
- [ ] Screen reader optimization
- [ ] Keyboard navigation improvements
- [ ] High contrast mode

## Deployment Checklist

### Pre-Release
- [ ] Run `flutter analyze`
- [ ] Format code: `flutter format lib/`
- [ ] Run tests: `flutter test`
- [ ] Update version in pubspec.yaml
- [ ] Update CHANGELOG.md

### Android Release
- [ ] Build APK: `flutter build apk --release`
- [ ] Build App Bundle: `flutter build appbundle --release`
- [ ] Sign with release key

### iOS Release
- [ ] Build IPA: `flutter build ios --release`
- [ ] Archive and upload to App Store

---

For more information, see:
- [Flutter Architecture Guide](https://flutter.dev/docs/development/architecture)
- [Clean Architecture in Flutter](https://codewithandrea.com/articles/flutter-state-management-riverpod)
