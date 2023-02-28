import 'package:cookpedia/core/presentation/splash.dart';
import 'package:cookpedia/core/res/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookpedia',
      theme: ThemeData(
        floatingActionButtonTheme: AppTheme.floatingActionButtonTheme,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashPage(),
    );
  }
}
