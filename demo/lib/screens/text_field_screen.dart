import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _obscureController = TextEditingController();
  void _onChanged(String value) {
    log(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldScreen'),
      ),
      body: Column(
        children: [
          NeuTextField(
            hintText: 'TextField',
            controller: _controller,
            onChanged: _onChanged,
          ),
          const SizedBox(height: 14),
          NeuTextField(
            hintText: 'obscureText',
            controller: _obscureController,
            onChanged: _onChanged,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
