import 'package:flutter/material.dart';

class Basicappbtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double? width;
  final double? height;
  const Basicappbtn({super.key,
  required this.width,
  required this.label,
  required this.onPressed,
  required this.height,
  this.color= Colors.red,
  this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
