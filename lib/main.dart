import 'package:flutter/material.dart';
import 'package:hod_speech_app/app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime, brightness: Brightness.light), useMaterial3: true),
      darkTheme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime, brightness: Brightness.dark), useMaterial3: true),
      home: const App(),
    );
  }
}
