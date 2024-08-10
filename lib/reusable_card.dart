import 'package:flutter/material.dart';

const cardHeight = 180.0;
const cardWidth = 170.0;

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, [this.cardChild]);
  final Color colour;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
