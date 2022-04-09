import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';
import 'package:landin/ui/widgets/button_cta.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  Widget iconSuccess() {
    return Container(
      width: 300,
      height: 150,
      margin: EdgeInsets.only(
        bottom: 80,
        top: 212,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/booked_icon.png',
          ),
        ),
      ),
    );
  }

  Widget titleDescription() {
    return Column(
      children: [
        Text(
          'Well Booked 😍',
          style: blackFonts.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Are you ready to explore the new\nworld of experiences?',
          style: grayFonts.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            iconSuccess(),
            titleDescription(),
            ButtonCTA(
              title: 'My Bookings',
              onPressed: () {},
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
