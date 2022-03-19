import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';
import 'package:landin/ui/pages/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  const DestinationTile({
    Key? key,
    required this.name,
    required this.city,
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
        width: double.infinity,
        height: 90,
        margin: EdgeInsets.only(
          top: 16,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 16,
              ),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackFonts.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    city,
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 2,
                  ),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/star.png'),
                    ),
                  ),
                ),
                Text(
                  '$rating',
                  style: blackFonts.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
