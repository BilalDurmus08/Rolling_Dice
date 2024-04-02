import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlingment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
   GradientContainer.blue({super.key})
      : colors = [Colors.blue.shade200, Colors.blueGrey.shade500];
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlingment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
