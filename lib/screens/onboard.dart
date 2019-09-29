import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:otrek/screens/PreScreen.dart';

const kImageDemo =
    "https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__14-512.png";

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => PreScreen()),
    );
  }

  Widget _buildImage(String src) {
    return Align(
      child: Image.asset(src, height: 175.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Never Trek Alone",
          body:
              "With OTrek you will never trek alone, simply launch the app and look for a person trekking to the same place",
          image: _buildImage("assets/onboarding/image1.png"),
          decoration: PageDecoration(
            titleTextStyle: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0xff707070),
            ),
            bodyTextStyle: TextStyle(
                fontSize: 15, color: Color(0xff707070), fontFamily: "Lato"),
          ),
        ),
        PageViewModel(
          title: "Improve Your Fitness",
          body:
              "A 1 hour walk will burn between 1.6 and 2.4 calories for every pound of you weight. Trek with friends on Otrek and burn those calories",
          image: _buildImage("assets/onboarding/image2.png"),
          decoration: PageDecoration(
            titleTextStyle: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0xff707070),
            ),
            bodyTextStyle: TextStyle(
                fontSize: 15, color: Color(0xff707070), fontFamily: "Lato"),
          ),
        ),
        PageViewModel(
          title: "Earn Rewards",
          body:
              "You don't have to trek for no reason. Get rewarded for walking the longest distance every single week",
          image: _buildImage("assets/onboarding/image3.png"),
          decoration: PageDecoration(
            titleTextStyle: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0xff707070),
            ),
            bodyTextStyle: TextStyle(
                fontSize: 15, color: Color(0xff707070), fontFamily: "Lato"),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Text('Skip'),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
