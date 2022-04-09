import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';
import 'package:landin/ui/pages/choose_seat.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import 'package:landin/ui/widgets/interest.dart';
import 'package:landin/ui/widgets/photo_detail.dart';

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
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 30,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About
                  Text(
                    'About',
                    style: blackFonts.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackFonts.copyWith(
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Photo
                  Text(
                    'Photo',
                    style:
                        blackFonts.copyWith(fontSize: 16, fontWeight: semibold),
                  ),
                  Row(
                    children: [
                      PhotoDetail(imageUrl: 'assets/photo 1.png'),
                      PhotoDetail(imageUrl: 'assets/photo 2.png'),
                      PhotoDetail(imageUrl: 'assets/photo 3.png'),
                    ],
                  ),
                  // Interest
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interest',
                          style: blackFonts.copyWith(
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InterestItem(
                              text: 'Kids Park',
                            ),
                            InterestItem(
                              text: 'Honor Bridge',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InterestItem(
                              text: 'City Museum',
                            ),
                            InterestItem(
                              text: 'Central Mall',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Price & Book
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackFonts.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: grayFonts.copyWith(
                              fontSize: 14, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  // Button Book
                  ButtonCTA(
                    title: 'Book Now',
                    width: 170,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeat(),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            backgroundShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
