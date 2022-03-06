import 'package:flutter/material.dart';
import 'package:landin/ui/pages/bonus_page.dart';
import 'package:landin/ui/pages/get_started.dart';
import 'package:landin/ui/pages/main_pages.dart';
import 'package:landin/ui/pages/sign_up.dart';
import 'package:landin/ui/pages/splash_page.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
