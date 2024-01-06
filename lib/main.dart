import 'package:flutter/material.dart';
import 'package:todo_app/screens/onboarding/splashscreen.dart';
import 'package:todo_app/screens/sign_in/signin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      routes: {
        SignInPage.routeName: (context) => const SignInPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
