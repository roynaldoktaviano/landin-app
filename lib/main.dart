import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landin/cubit/page_cubit.dart';
import 'package:landin/ui/pages/bonus_page.dart';
import 'package:landin/ui/pages/checkout_page.dart';
import 'package:landin/ui/pages/get_started.dart';
import 'package:landin/ui/pages/home_page.dart';
import 'package:landin/ui/pages/main_pages.dart';
import 'package:landin/ui/pages/sign_up.dart';
import 'package:landin/ui/pages/splash_page.dart';
import 'package:landin/ui/pages/success_checkout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/checkout': (context) => CheckoutPage(),
          '/success': (context) => SuccessPage(),
        },
      ),
    );
  }
}
