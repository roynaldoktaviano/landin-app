import 'package:flutter/material.dart';
import 'package:landin/ui/pages/home_page.dart';
import 'package:landin/ui/widgets/button_nav.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  Widget buildContent() {
    return HomePage();
  }

  Widget customBottomNav() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30,
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonNavbar(
              imagUrl: 'assets/bot1.png',
              isSelected: true,
            ),
            ButtonNavbar(imagUrl: 'assets/bot2.png'),
            ButtonNavbar(imagUrl: 'assets/bot3.png'),
            ButtonNavbar(imagUrl: 'assets/bot4.png'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNav(),
        ],
      ),
    );
  }
}
