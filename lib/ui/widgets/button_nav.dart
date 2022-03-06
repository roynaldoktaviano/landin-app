import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ButtonNavbar extends StatelessWidget {
  final bool isSelected;
  final String imagUrl;
  const ButtonNavbar({
    Key? key,
    required this.imagUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? purpleColor : transparant,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ],
    );
  }
}
