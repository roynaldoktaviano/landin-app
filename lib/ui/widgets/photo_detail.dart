import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PhotoDetail extends StatelessWidget {
  final String imageUrl;
  const PhotoDetail({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
        right: 16,
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
