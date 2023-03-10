import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  Button(
      {required this.color,
      required this.textColor,
      required this.buttonText,
      this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: buttonTapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 75,
          width: 75,
          color: color,
          child: Center(
            child: Text(buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
