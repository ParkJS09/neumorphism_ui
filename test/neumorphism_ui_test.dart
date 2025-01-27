import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

void main() {
  group('NeuButton', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: NeuButton(
              onPressed: () {},
              child: const Text('Test Button'),
            ),
          ),
        ),
      );

      expect(find.text('Test Button'), findsOneWidget);
    });
  });

  group('NeuTextField', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: NeuTextField(
              hintText: 'Test Hint',
            ),
          ),
        ),
      );

      expect(find.text('Test Hint'), findsOneWidget);
    });
  });
}
