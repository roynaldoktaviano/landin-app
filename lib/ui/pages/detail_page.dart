import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/lake.png'),
          ),
        ),
      );
    }

    Widget backgroundShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // Emblem Top
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 40,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/emblem.png'),
                ),
              ),
            ),
            // Title & Rating
            Container(
              margin: EdgeInsets.only(
                top: 256,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteFonts.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteFonts.copyWith(
                            fontSize: 16,
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
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(
                          right: 2,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: whiteFonts.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Description
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          backgroundShadow(),
          content(),
        ],
      ),
    );
  }
}
