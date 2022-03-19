import 'package:flutter/material.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import 'package:landin/ui/widgets/textfield_custom.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        padding: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackFonts.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget inputForm() {
      Widget textField(String inputTitle, String placeholder, bool obsecure) {
        return TextFieldCust(
          label: inputTitle,
          hintText: placeholder,
          obsecureText: obsecure,
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            textField('Full Name', 'Your Full Name', false),
            textField('Email', 'Your Email', false),
            textField('Password', 'Your Password', true),
            textField('Hobby', 'Your Hobby', false),
            ButtonCTA(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Terms & Conditions',
            style: grayFonts.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
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
            inputForm(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
