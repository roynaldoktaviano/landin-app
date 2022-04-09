import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatIndicator extends StatelessWidget {
  final String text;
  const SeatIndicator({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      width: 48,
      height: 48,
      child: Center(
        child: Text(
          text,
          style: grayFonts.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
