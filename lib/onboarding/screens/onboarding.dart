import 'package:flutter/material.dart';
import 'package:todo_app/onboarding/onboarding_model.dart';
import 'package:todo_app/utilities/constants.dart';
import 'package:todo_app/onboarding/screens/signin.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});
  static const routeName = '/onboard';

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int? index;
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // this is the skip button
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 24.0, left: 24.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, SignInPage.routeName);
                              },
                              child: Text(
                                screens[index].btn,
                                style: konboardingPageTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // this is the image in the center
                      Image.asset(screens[index].image),
                      // SvgPicture.asset("assets/onboardingscreens/onboarding1.svg"),
                      // the page indicators
                      SizedBox(
                        height: 8,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: screens.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 3.0),
                                  height: 5,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? Colors.white
                                        : Colors.white30,
                                    borderRadius:
                                        const BorderRadius.horizontal(),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      //the text and descriptions
                      Text(
                        screens[index].text,
                        style: ktitleTextStyle,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            screens[index].desc,
                            style: konboardingPageTextStyle,
                          ),
                          Text(
                            screens[index].desc2,
                            style: konboardingPageTextStyle,
                          ),
                        ],
                      ),
                      // the buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //back button
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: GestureDetector(
                                onTap: () {
                                  _pageController.previousPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                child: Text(
                                  screens[index].btn1,
                                  style: konboardingPageTextStyle,
                                )),
                          ),
                          //next button
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: SizedBox(
                              height: 55,
                              width: screens[index].width,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: konboardingBtnColor),
                                onPressed: () {
                                  _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                  if (currentIndex == screens.length - 1) {
                                    Navigator.pushNamed(
                                        context, SignInPage.routeName);
                                  }
                                },
                                child: Text(
                                  screens[index].btn2,
                                  style: konboardingPageTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
