import 'package:flutter/material.dart';
import 'package:landin/ui/widgets/destination_card.dart';
import 'package:landin/ui/widgets/destination_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style: blackFonts.copyWith(
                    fontWeight: semibold,
                    fontSize: 24,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage('assets/avatar.png'),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Where to fly today ?',
              style: grayFonts.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                place: 'Tangerang',
                imageUrl: 'assets/lake.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White House',
                place: 'Spain',
                imageUrl: 'assets/white_house.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                place: 'Monaco',
                imageUrl: 'assets/hill.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Menarra',
                place: 'Japan',
                imageUrl: 'assets/menara.png',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                place: 'Singapore',
                imageUrl: 'assets/payung.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackFonts.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            DestinationTile(
              name: 'Danau Berantan',
              city: 'Singaraja',
              imageUrl: 'assets/danau.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/sydney.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/roma.png',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/payung-new.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/hill-new.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          popularDestination(),
          newDestination(),
        ],
      ),
    );
  }
}
