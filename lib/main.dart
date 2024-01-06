import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/authentication/AuthUtilities/provider.dart';
import 'package:todo_app/onboarding/screens/splashscreen.dart';
import 'package:todo_app/onboarding/screens/signin.dart';
import 'package:todo_app/authentication/Authscreens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        LogInPage.routeName: (context) => const LogInPage()
      },
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
