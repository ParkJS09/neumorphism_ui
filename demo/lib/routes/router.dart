import 'package:demo/screens/button_screen.dart';
import 'package:demo/screens/chip_screen.dart';
import 'package:demo/screens/home_screen.dart';
import 'package:demo/screens/text_field_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'button',
          builder: (context, state) => ButtonScreen(),
        ),
        GoRoute(
          path: 'textField',
          builder: (context, state) => TextFieldScreen(),
        ),
        GoRoute(
          path: 'chip',
          builder: (context, state) => ChipScreen(),
        )
      ],
    ),
  ],
);
