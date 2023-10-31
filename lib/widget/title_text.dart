import 'package:flutter/material.dart';

class TitlesTextWidget extends StatelessWidget {
  const TitlesTextWidget({
    super.key,
    required this.label,
    this.fontSize = 20,
    this.color,
  });

  final String label;
  final double fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
