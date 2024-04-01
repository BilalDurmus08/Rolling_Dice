import 'package:flutter/material.dart';

const startAlingment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  GradientContainer.purple({super.key})
      : colors = [Colors.blue.shade200, Colors.blueGrey.shade500];
  final List<Color> colors;

  void rollDice() {
    //.....
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-6.png',
              width: 200,
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                /*padding: const EdgeInsets.only(
                  top: 20
                  ),*/
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll a Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
