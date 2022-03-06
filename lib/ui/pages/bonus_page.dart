import 'package:flutter/material.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import '../../shared/theme.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  Widget balanceCard() {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      width: 300,
      height: 211,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_card.png'),
          ),
          boxShadow: [
            BoxShadow(
                color: purpleColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteFonts.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'Kezia Anne',
                      style: whiteFonts.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    )),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Pay',
                    style: whiteFonts.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 41,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Balance',
                style: whiteFonts.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
              ),
              Text(
                'IDR 280.000.000',
                style: whiteFonts.copyWith(
                  fontSize: 26,
                  fontWeight: medium,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        'Big Bonus 🎉',
        style: blackFonts.copyWith(
          fontSize: 32,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget subtitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Text(
        'We give you early credit so that\nyou can buy a flight ticket',
        style: grayFonts.copyWith(
          fontSize: 16,
          fontWeight: light,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            balanceCard(),
            title(),
            subtitle(),
            ButtonCTA(
              title: 'Start Fly Now',
              width: 220,
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              margin: EdgeInsets.only(
                top: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
