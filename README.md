<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Neumorphism UI

A modern neumorphic design system for Flutter applications. This package provides a collection of customizable neumorphic UI components with smooth animations and elegant shadows.

## Features

- 🎨 Modern Neumorphic Design
- 🎯 Highly Customizable Components
- 🌓 Dark Mode Support
- ⚡ Smooth Animations
- 📱 Responsive Design

## Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  neumorphism_ui: ^0.0.1
```

## Usage

```dart
import 'package:neumorphism_ui/neumorphism_ui.dart';

// Use Neumorphic Button
NeuButton(
  onPressed: () {},
  child: Text('Click Me'),
);

// Use Neumorphic Card
NeuCard(
  child: Text('Hello Neumorphism!'),
);

// Use Neumorphic TextField
NeuTextField(
  hintText: 'Enter text',
);
```

## Components

- Buttons
  - NeuButton
  - NeuIconButton
- Input Fields
  - NeuTextField
- Cards
  - NeuCard
- Navigation
  - NeuBottomSheet
  - NeuTabBar
- Feedback
  - NeuToast
  - NeuProgress
- Loading
  - NeuSkeleton

## Additional information

For more examples and documentation, visit our [GitHub repository](https://github.com/yourusername/neumorphism_ui).
