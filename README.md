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
