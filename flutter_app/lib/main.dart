import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DefaultGuardian',
      theme: _buildTheme(),
      darkTheme: _buildTheme(),
      home: const WelcomeScreen(),
    );
  }
}

ThemeData _buildTheme() {
  var baseTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorPalette.blue),
    useMaterial3: true,
  );

  return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
      brightness: Brightness.dark);
}
