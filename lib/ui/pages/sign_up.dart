import 'package:flutter/material.dart';
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
      Widget inputText(String inputTitle, String placeholder) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                inputTitle,
                style: blackFonts.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                    hintText: placeholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(
                          color: purpleColor,
                        ))),
              ),
            ],
          ),
        );
      }

      Widget inputPassword(String inputTitle, String placeholder) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                inputTitle,
                style: blackFonts.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: blackColor,
                decoration: InputDecoration(
                    hintText: placeholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(
                          color: purpleColor,
                        ))),
              ),
            ],
          ),
        );
      }

      Widget submitButton() {
        return Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: purpleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
            child: Text(
              'Get Started',
              style: whiteFonts.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
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
            inputText('Full Name', 'Your Full Name'),
            inputText('Email', 'Your Email'),
            inputPassword('Password', 'Your Password'),
            inputText('Hobby', 'Your Hobby'),
            submitButton(),
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
