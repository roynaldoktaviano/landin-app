import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/check.png'),
              ),
            ),
          ),
          Text(
            text,
            style: blackFonts.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
