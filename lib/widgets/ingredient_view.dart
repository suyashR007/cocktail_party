import 'package:flutter/material.dart';

class IngredientView extends StatelessWidget {
  final String ingradient;
  final String qualtity;
  const IngredientView({
    required this.ingradient,
    required this.qualtity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(ingradient),
        Text(qualtity),
      ],
    );
  }
}
