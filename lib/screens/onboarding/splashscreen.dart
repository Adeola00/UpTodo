import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/onboarding/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSplashScreen(
        duration: 3000,
        backgroundColor: Colors.black,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        splash: Center(
            child: Column(
          children: [
            Expanded(child: Image.asset("assets/splashicon.png")),
            Text(
              "UpTodo",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(245, 255, 255, 255),
                ),
              ),
            ),
          ],
        )),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const Onboard(),
        splashIconSize: 200,
      ),
    );
  }
}
