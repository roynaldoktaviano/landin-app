import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class TACButton extends StatelessWidget {
  const TACButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Terms & Conditions',
          style: grayFonts.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
