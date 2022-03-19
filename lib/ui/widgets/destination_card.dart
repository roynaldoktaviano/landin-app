import 'package:flutter/material.dart';
import 'package:landin/ui/pages/detail_page.dart';

import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String place;
  final String imageUrl;
  final double rating;

  const DestinationCard({
    Key? key,
    required this.name,
    required this.place,
    required this.imageUrl,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(
                          right: 2,
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star.png'))),
                      ),
                      Text(
                        '$rating',
                        style: blackFonts.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text(
              name,
              style: blackFonts.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Text(
              place,
              style: grayFonts.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            )
          ],
        ),
      ),
    );
  }
}
