import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({required this.cardChild, required this.onPress});

  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: Color(0xFF3D4957),
          borderRadius: BorderRadius.circular(23.0),
        ),
      ),
    );
  }
}
