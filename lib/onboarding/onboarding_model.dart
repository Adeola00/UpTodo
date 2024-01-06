class OnboardingScreen {
  final String image;
  final String text;
  final String desc;
  final String desc2;
  final String btn1;
  final String btn2;
  final String btn;
  final double? width;

  OnboardingScreen(
      {required this.image,
      required this.text,
      required this.desc,
      required this.desc2,
      required this.btn,
      required this.btn1,
      required this.btn2,
      this.width});
}

List<OnboardingScreen> screens = <OnboardingScreen>[
  OnboardingScreen(
      image: 'assets/onboardingscreens/Onboard1.png',
      text: 'Manage your tasks',
      desc: 'You can easily manage all of your daily',
      desc2: 'tasks in DoMe for free',
      btn: "SKIP",
      btn1: 'BACK',
      btn2: 'NEXT',
      width: 100),
  OnboardingScreen(
      image: 'assets/onboardingscreens/Onboard2.png',
      text: 'Create daily routine',
      desc: 'In Uptodo you can create your',
      desc2: 'personalized routine to stay productive',
      btn: "SKIP",
      btn1: 'BACK',
      btn2: 'NEXT',
      width: 100),
  OnboardingScreen(
    image: 'assets/onboardingscreens/Onboard3.png',
    text: 'Organize your tasks',
    desc: 'You can organize your daily tasks by',
    desc2: 'adding your tasks into separate categories',
    btn: "SKIP",
    btn1: 'BACK',
    btn2: 'GET STARTED',
    width: 155,
  ),
];
