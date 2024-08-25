import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/material.dart';

class DayBlock extends StatelessWidget {
  int numberDay;
  void Function() onTap;

  DayBlock({super.key, required this.numberDay, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.blue,
        ),
        child: Center(
          child: NText(
            text: "$numberDay",
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
