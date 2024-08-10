import 'package:flutter/material.dart';

class genderSign extends StatelessWidget {
  genderSign(this.text, this.icons);
  final String text;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
