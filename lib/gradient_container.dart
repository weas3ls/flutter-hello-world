import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.colors,
      required this.startAlignment,
      required this.endAlignment});

  final Alignment startAlignment;
  final Alignment endAlignment;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
