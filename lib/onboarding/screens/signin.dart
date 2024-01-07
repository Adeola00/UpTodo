import 'package:flutter/material.dart';
import 'package:todo_app/utilities/constants.dart';
import 'package:todo_app/authentication/Authscreens/login.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const routeName = '/signInPage';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome to UpTodo",
                  style: ktitleTextStyle,
                ),
                const SizedBox(height: 35),
                const Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Please login to your account or create",
                      style: konboardingPageTextStyle,
                    ),
                    Text(
                      "new account to continue",
                      style: konboardingPageTextStyle,
                    )
                  ],
                ),
                SizedBox(height: 0.5 * screenHeight),
                SizedBox(
                  height: 50,
                  width: 0.9 * screenWidth,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LogInPage.routeName);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: konboardingBtnColor,
                    ),
                    child: const Text(
                      "LOGIN",
                      style: konboardingPageTextStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 0.9 * screenWidth,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(
                        color: konboardingBtnColor,
                      ),
                    ),
                    child: const Text(
                      "CREATE ACCOUNT",
                      style: konboardingPageTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
