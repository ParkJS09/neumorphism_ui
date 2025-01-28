import 'package:demo/models/neudesign_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NeuDesignModel> _designModels = [
    NeuDesignModel(name: 'Button', path: 'button'),
    NeuDesignModel(name: 'TextField', path: 'textField'),
    NeuDesignModel(name: 'Chip', path: 'chip'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(14.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14.0,
          crossAxisSpacing: 14.0,
        ),
        itemCount: _designModels.length,
        itemBuilder: (context, item) => NeuCard(
          onTap: () {
            context.go('/${_designModels[item].name}');
          },
          child: Center(
            child: Text(
              '${_designModels[item].name}',
            ),
          ),
        ),
      ),
    );
  }
}
