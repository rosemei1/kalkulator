import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  //Constructor
  MyButton({this.color, this.textColor, required this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: 10,
            height: 10,
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
