import 'package:flutter/material.dart';
import 'package:landin/shared/theme.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import 'package:landin/ui/widgets/information_list.dart';
import 'package:landin/ui/widgets/tac_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget routeImage() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
          Container(
            width: 291,
            height: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/plane.png',
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackFonts.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Bali',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackFonts.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Palangkaraya',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget informationContainer() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/lake.png')),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style:
                        blackFonts.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    'Palangkaraya',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/star.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '4.8',
                    style: blackFonts.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking Details',
                  style: blackFonts.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                InfoList(
                  fitur: 'Traveler',
                  value: '2 Person',
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'Seat',
                  value: 'A3, B3',
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'Insurance',
                  value: 'YES',
                  warnaText: greenColor,
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'Refundable',
                  value: 'NO',
                  warnaText: redColor,
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'VAT',
                  value: '45%',
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'Price',
                  value: 'IDR 8.500.690',
                ),
                SizedBox(
                  height: 16,
                ),
                InfoList(
                  fitur: 'Grand Total',
                  value: 'IDR 12.000.000',
                  warnaText: purpleColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      padding: EdgeInsets.only(
        top: 30,
        bottom: 30,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: blackFonts.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 16,
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 23,
                  horizontal: 20,
                ),
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    image: AssetImage('assets/bg_card.png'),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 6,
                      ),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/logo.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Pay',
                      style: whiteFonts.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IDR 80.400.000',
                    style: blackFonts.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Current Balance',
                    style: grayFonts.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            routeImage(),
            informationContainer(),
            paymentDetails(),
            ButtonCTA(
              title: 'Pay Now',
              onPressed: () {
                Navigator.pushNamed(context, '/success');
              },
            ),
            TACButton(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
