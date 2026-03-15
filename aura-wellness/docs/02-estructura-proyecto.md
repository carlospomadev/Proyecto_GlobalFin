# Estructura del Proyecto - Aura Wellness

## 🏗️ Arquitectura General

### Clean Architecture
```
lib/
├── core/                    # Núcleo de la aplicación
│   ├── constants/          # Constantes globales
│   ├── errors/             # Manejo de errores
│   ├── network/            # Configuración de red
│   ├── theme/              # Tema y estilos
│   └── utils/              # Utilidades comunes
├── data/                   # Capa de datos
│   ├── datasources/        # Fuentes de datos
│   ├── models/             # Modelos de datos
│   └── repositories/       # Repositorios
├── domain/                 # Capa de dominio
│   ├── entities/           # Entidades de negocio
│   ├── repositories/       # Interfaces de repositorios
│   └── usecases/           # Casos de uso
├── presentation/           # Capa de presentación
│   ├── blocs/              # Lógica de estado (BLoC)
│   ├── pages/              # Páginas/screens
│   ├── widgets/            # Componentes reutilizables
│   └── routes/             # Configuración de rutas
└── main.dart               # Punto de entrada
```

## 📂 Estructura Detallada

### Core Layer
```
core/
├── constants/
│   ├── app_constants.dart
│   ├── api_endpoints.dart
│   └── colors.dart
├── errors/
│   ├── exceptions.dart
│   ├── failures.dart
│   └── error_messages.dart
├── network/
│   ├── dio_client.dart
│   ├── interceptors.dart
│   └── network_info.dart
├── theme/
│   ├── app_theme.dart
│   ├── color_scheme.dart
│   └── text_theme.dart
└── utils/
    ├── date_formatter.dart
    ├── validators.dart
    └── extensions.dart
```

### Data Layer
```
data/
├── datasources/
│   ├── local/
│   │   ├── hive_datasource.dart
│   │   └── shared_preferences_datasource.dart
│   └── remote/
│       ├── health_api_datasource.dart
│       └── user_api_datasource.dart
├── models/
│   ├── user_model.dart
│   ├── health_metric_model.dart
│   ├── activity_model.dart
│   └── goal_model.dart
└── repositories/
    ├── user_repository_impl.dart
    ├── health_repository_impl.dart
    └── activity_repository_impl.dart
```

### Domain Layer
```
domain/
├── entities/
│   ├── user.dart
│   ├── health_metric.dart
│   ├── activity.dart
│   └── goal.dart
├── repositories/
│   ├── user_repository.dart
│   ├── health_repository.dart
│   └── activity_repository.dart
└── usecases/
    ├── get_user_profile.dart
    ├── get_health_metrics.dart
    ├── log_activity.dart
    ├── update_goal.dart
    └── authenticate_user.dart
```

### Presentation Layer
```
presentation/
├── blocs/
│   ├── auth/
│   │   ├── auth_bloc.dart
│   │   ├── auth_event.dart
│   │   └── auth_state.dart
│   ├── health/
│   │   ├── health_bloc.dart
│   │   ├── health_event.dart
│   │   └── health_state.dart
│   └── navigation/
│       ├── navigation_bloc.dart
│       ├── navigation_event.dart
│       └── navigation_state.dart
├── pages/
│   ├── auth/
│   │   ├── login_page.dart
│   │   └── register_page.dart
│   ├── dashboard/
│   │   ├── dashboard_page.dart
│   │   └── metric_detail_page.dart
│   ├── profile/
│   │   ├── profile_page.dart
│   │   └── settings_page.dart
│   └── onboarding/
│       ├── welcome_page.dart
│       └── setup_page.dart
├── widgets/
│   ├── common/
│   │   ├── app_bar.dart
│   │   ├── bottom_navigation.dart
│   │   ├── drawer.dart
│   │   └── loading_indicator.dart
│   ├── health/
│   │   ├── metric_card.dart
│   │   ├── activity_log.dart
│   │   └── progress_chart.dart
│   └── forms/
│       ├── text_field.dart
│       ├── date_picker.dart
│       └── time_picker.dart
└── routes/
    ├── app_router.dart
    ├── route_names.dart
    └── route_generator.dart
```

## 🗂️ Convenciones de Nomenclatura

### Archivos
- **Páginas**: `page_name_page.dart`
- **Widgets**: `widget_name.dart`
- **BLoCs**: `feature_name_bloc.dart`
- **Eventos**: `feature_name_event.dart`
- **Estados**: `feature_name_state.dart`
- **Modelos**: `entity_name_model.dart`
- **Entidades**: `entity_name.dart`
- **Casos de uso**: `action_name.dart`

### Clases
- **Páginas**: `PageNamePage`
- **Widgets**: `WidgetName`
- **BLoCs**: `FeatureNameBloc`
- **Eventos**: `FeatureNameEvent`
- **Estados**: `FeatureNameState`
- **Modelos**: `EntityNameModel`
- **Entidades**: `EntityName`
- **Casos de uso**: `ActionName`

## 📋 Dependencias Principales

### Core
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

  # State Management
  flutter_bloc: ^8.1.3
  bloc: ^8.1.2

  # Networking
  dio: ^5.3.2
  connectivity_plus: ^5.0.2

  # Local Storage
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  shared_preferences: ^2.2.2

  # UI Components
  google_fonts: ^6.1.0
  flutter_svg: ^2.0.9
  cached_network_image: ^3.3.0

  # Utilities
  equatable: ^2.0.5
  intl: ^0.19.0
  uuid: ^4.2.1
```

### Development
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1

  # Testing
  bloc_test: ^9.1.4
  mockito: ^5.4.4

  # Code Generation
  hive_generator: ^2.0.1
  build_runner: ^2.4.6
  json_serializable: ^6.7.1
```

## 🔧 Configuración del Proyecto

### 1. Inicialización
```bash
flutter create aura_wellness
cd aura_wellness
flutter pub get
```

### 2. Configuración de Hive
```dart
// main.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(HealthMetricModelAdapter());

  runApp(const MyApp());
}
```

### 3. Configuración de BLoC
```dart
// main.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependencies
  await configureDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider<HealthBloc>(
          create: (context) => sl<HealthBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
```

## 📊 Estrategia de Testing

### Unit Tests
- **Domain Layer**: 100% coverage
- **Data Layer**: 100% coverage
- **Presentation Layer**: 80% coverage mínimo

### Widget Tests
- Componentes críticos: 100% coverage
- Flujos principales: Tests de integración

### Integration Tests
- Flujos completos de usuario
- Interacciones con APIs
- Persistencia local

---

*Última actualización: Marzo 4, 2024*</content>
<parameter name="filePath">/workspaces/Proyecto_GlobalFin/aura-wellness/docs/02-estructura-proyecto.md
