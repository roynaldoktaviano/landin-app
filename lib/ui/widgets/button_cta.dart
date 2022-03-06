import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ButtonCTA extends StatelessWidget {
  final String title;
  final double width;
  final EdgeInsets margin;
  final Function() onPressed;
  const ButtonCTA({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteFonts.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            )),
      ),
    );
  }
}
