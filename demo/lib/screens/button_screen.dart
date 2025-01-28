import 'package:flutter/material.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonScreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: NeuButton(
                onPressed: () {
                  NeuToast.show(context, 'onClick Button');
                },
                child: Text('Button'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 200,
              child: NeuButton(
                onPressed: () {
                  NeuToast.show(context, 'onClick checkButton');
                },
                child: Row(
                  spacing: 14.0,
                  children: [
                    Icon(Icons.check_circle),
                    Expanded(
                      child: Text(
                        'Check',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
