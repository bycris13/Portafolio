import 'package:flutter/material.dart';
import 'package:web_cris/config/theme/app_theme.dart';
import 'package:web_cris/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme().getThemeDark(), home: const HomeScreen());
  }
}
