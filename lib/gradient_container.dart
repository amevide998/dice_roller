import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';
import 'package:dice_roller/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startGradient, this.endGradient, {super.key});

  final Color startGradient;
  final Color endGradient;

  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startGradient, endGradient],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller()),
    );
  }
}
