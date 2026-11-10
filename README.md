# HabitaCheck — Frontend

Aplicación Flutter de HabitaCheck para Android, iOS y web.

## Ramas

- `main`: rama principal; contiene la configuración inicial del repositorio.
- `develop`: rama de integración, creada desde `main`.
- `sprint-11/HU-base-front`: base Flutter y pantalla de bienvenida estática, creada desde `develop`.

El código de esta entrega está en `sprint-11/HU-base-front`. Los cambios se integrarán mediante pull requests hacia `develop` y posteriormente hacia `main`.

## Configuración

La pantalla inicial utiliza recursos locales y no necesita backend, base de datos ni un archivo `.env`.

No se deben guardar secretos en el código ni en recursos del cliente. Los archivos `.env`, credenciales, certificados, configuraciones locales y resultados de compilación están excluidos de Git. `pubspec.lock` se versiona para conservar las versiones de las dependencias de la aplicación.

## Requisitos de desarrollo

- Flutter 3.47.4 y Dart 3.13.3, o versiones compatibles con `pubspec.yaml`.
- Chrome para la versión web.
- Android SDK y un emulador o dispositivo para Android.
- macOS y Xcode para compilar iOS.

## Ejecutar

```sh
git clone --branch sprint-11/HU-base-front https://github.com/Omar14-14/habitacheck-front.git
cd habitacheck-front
flutter pub get
flutter run -d chrome
```

Para Android o iOS, consultar `flutter devices` y ejecutar `flutter run -d <id>`.

## Validación

```sh
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
```

## Estructura de la entrega

```text
lib/
  main.dart
  features/onboarding/presentation/
    pages/welcome_screen.dart
    widgets/welcome_action_button.dart
assets/images/welcome-villa.png
test/widget_test.dart
```

La pantalla reproduce la bienvenida de referencia con una imagen local, formas decorativas y dos botones. Los botones conservan su apariencia y todavía no navegan. No hay solicitudes de red, autenticación ni persistencia.

La organización actual separa presentación y widgets por funcionalidad; todavía no implementa MVVM ni incluye ViewModels. La prueba comprueba el renderizado en tamaños de móvil y escritorio y que el botón principal no cambie de pantalla.
