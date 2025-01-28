import 'package:flutter/material.dart';
import 'package:neumorphism_ui/neumorphism_ui.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({super.key});

  @override
  State<ChipScreen> createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  // 선택된 칩의 인덱스를 저장할 변수 추가
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
          horizontal: 14.0,
        ),
        child: Column(
          children: [
            Row(
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index != 2 ? 14.0 : 0),
                  child: NeuChip(
                    label: 'Chip ${index + 1}',
                    isSelected: selectedIndex == index,
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              }),
            ),
            const SizedBox(height: 14.0),
            Row(
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index != 2 ? 14.0 : 0),
                  child: NeuCheckChip(
                    checkIcon: Icon(Icons.check),
                    label: 'Chip ${index + 1}',
                    isSelected: selectedIndex == index,
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
