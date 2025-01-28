import 'package:demo/models/neudesign_model.dart';
import 'package:demo/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:neumorphism_ui/components/buttons/neu_button.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Neu Design System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
