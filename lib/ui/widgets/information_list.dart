import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class InfoList extends StatelessWidget {
  final String fitur;
  final String value;
  final Color warnaText;
  const InfoList({
    Key? key,
    required this.fitur,
    required this.value,
    this.warnaText = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                fitur,
                style: blackFonts.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          Text(
            value,
            style: blackFonts.copyWith(
              fontSize: 14,
              fontWeight: bold,
              color: warnaText,
            ),
          )
        ],
      ),
    );
  }
}
