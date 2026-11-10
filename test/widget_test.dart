import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habitacheck/main.dart';

void main() {
  testWidgets('Muestra la bienvenida estática en móvil y escritorio', (
    tester,
  ) async {
    addTearDown(() => tester.view.resetPhysicalSize());
    addTearDown(() => tester.view.resetDevicePixelRatio());
    tester.view.devicePixelRatio = 1;

    for (final size in [
      const Size(430, 956),
      const Size(1440, 900),
      const Size(320, 568),
    ]) {
      tester.view.physicalSize = size;
      await tester.pumpWidget(const HabitacheckApp());
      await tester.pumpAndSettle();

      expect(find.text('comenzar ahora'), findsOneWidget);
      expect(find.text('ya tengo una cuenta'), findsOneWidget);
      expect(tester.takeException(), isNull);

      await tester.ensureVisible(find.text('comenzar ahora'));
      await tester.tap(find.text('comenzar ahora'));
      await tester.pumpAndSettle();
      expect(find.text('comenzar ahora'), findsOneWidget);
      expect(tester.takeException(), isNull);
    }
  });
}
