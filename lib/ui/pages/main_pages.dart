import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landin/cubit/page_cubit.dart';
import 'package:landin/ui/pages/home_page.dart';
import 'package:landin/ui/pages/setting_page.dart';
import 'package:landin/ui/pages/transaction_page.dart';
import 'package:landin/ui/pages/wallet_page.dart';
import 'package:landin/ui/widgets/button_nav.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return TransactionPage();
      case 2:
        return WalletPage();
      case 3:
        return SettingPage();
      default:
        return HomePage();
    }
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
              index: 0,
            ),
            ButtonNavbar(
              imagUrl: 'assets/bot2.png',
              index: 1,
            ),
            ButtonNavbar(
              imagUrl: 'assets/bot3.png',
              index: 2,
            ),
            ButtonNavbar(
              imagUrl: 'assets/bot4.png',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNav(),
            ],
          ),
        );
      },
    );
  }
}
