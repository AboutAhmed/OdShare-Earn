import 'package:flutter/material.dart';
import 'package:odshare_earn/View/SignupSigninScreens/SigninScreen.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              _currentPageNotifier.value = index;
            },
            children: [
              _buildPageOne(),
              _buildPageTwo(),
            ],
          ),
          ///////////////////////////////////////////////builddots
          Positioned(
            left: 0,
            right: 0,
            bottom: 80,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: CirclePageIndicator(
                dotColor: Colors.white,
                selectedDotColor: Color(0xff0DA600),
                itemCount: 2,
                currentPageNotifier: _currentPageNotifier,
              ),
            ),
          ),
        ],
      ),
    );
  }
////////////////////////////////////////////////////onboarding1
  Widget _buildPageOne() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/OnB1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Center(
          child: Column(
            children: [
              Image.asset('lib/assets/On1.png'),
              const SizedBox(height: 10),
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to OdShare! Boost your social media presence, buy followers, earn cash. Ready to elevate your online influence? Let\'s get started!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0DA600),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff0DA600),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
//////////////////////////////////////////////////////onboarding2
  Widget _buildPageTwo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/OnB2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 250),
        child: Center(
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Od',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0DA600),
                      ), // Change the color for 'Od'
                    ),
                    TextSpan(
                      text: 'Share',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white, // Change the color for 'Car'
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Unlock your social potential with Od Share.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 140),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0DA600),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff0DA600),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
