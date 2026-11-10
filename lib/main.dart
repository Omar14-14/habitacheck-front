import 'package:flutter/material.dart';

import 'features/onboarding/presentation/pages/welcome_screen.dart';

void main() {
  runApp(const HabitacheckApp());
}

class HabitacheckApp extends StatelessWidget {
  const HabitacheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HabitaCheck',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2D527C)),
      ),
      home: const WelcomeScreen(),
    );
  }
}
