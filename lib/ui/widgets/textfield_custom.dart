import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TextFieldCust extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obsecureText;
  const TextFieldCust({
    Key? key,
    required this.label,
    required this.hintText,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: blackFonts.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecureText,
            cursorColor: blackColor,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: purpleColor,
                    ))),
          ),
        ],
      ),
    );
  }
}
