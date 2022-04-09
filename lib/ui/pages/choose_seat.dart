import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import 'package:landin/ui/widgets/row_seats.dart';
import 'package:landin/ui/widgets/seat_indicator.dart';
import 'package:landin/ui/widgets/seat_item.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Your\nFavorite Seat',
              style: blackFonts.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Available Seats
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/avaible.png'),
                  )),
                ),
                Text(
                  'Available',
                  style: blackFonts.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            ),
            // Selected Seats
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/selected.png'),
                  )),
                ),
                Text(
                  'Selected',
                  style: blackFonts.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            ),
            // Unavailable Seats
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/unavaible.png'),
                  )),
                ),
                Text(
                  'Unavailable',
                  style: blackFonts.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            // Seat Alphabet
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatIndicator(text: 'A'),
                SeatIndicator(text: 'B'),
                SeatIndicator(text: ''),
                SeatIndicator(text: 'C'),
                SeatIndicator(text: 'D'),
              ],
            ),

            // Seat Indicator
            RowSeats(
              numberRow: '1',
              stats: [0, 0, 2, 0],
            ),
            RowSeats(
              numberRow: '2',
              stats: [2, 2, 2, 0],
            ),
            RowSeats(
              numberRow: '3',
              stats: [1, 1, 2, 2],
            ),
            RowSeats(
              numberRow: '4',
              stats: [2, 0, 2, 2],
            ),
            RowSeats(
              numberRow: '5',
              stats: [2, 2, 0, 2],
            ),

            // Seat Information
            // Seat Location
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackFonts.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),

            // Seat Price
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 54.000.000',
                    style: purpleFonts.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            seatStatus(),
            selectSeat(),
            ButtonCTA(
              title: 'Continue to Checkout',
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
            )
          ],
        ),
      ),
    );
  }
}
