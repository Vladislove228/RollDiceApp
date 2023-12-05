import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlighment = Alignment.topLeft;
const endAlighment = Alignment.bottomRight;

class GradiendContainer extends StatelessWidget {
   const GradiendContainer(this.color1, this.color2, {super.key});

   const GradiendContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlighment,
          end: endAlighment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
