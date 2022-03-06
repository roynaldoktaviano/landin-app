import 'package:flutter/material.dart';
import 'package:landin/ui/widgets/button_cta.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background_plane.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteFonts.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let \nyourself get an amazing experiences',
                  style: whiteFonts.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                ButtonCTA(
                  width: 220,
                  title: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
