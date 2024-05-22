import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odshare_earn/View/Onboarding/Onboarding.dart';
import 'package:odshare_earn/View/SignupSigninScreens/SigninScreen.dart';
import 'package:odshare_earn/View/SignupSigninScreens/Signup2.dart';
class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40),
              /////////////////////////////////////////////////////////////////arrow Back
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()), // Change NextScreen() to your next screen
                  );
                },
                child:const CircleAvatar(
                  backgroundColor: Color(0xffE6E6E6),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              /////////////////////////////////////////////////////////////Login to odshare
              const Center(
                child: Text(
                  'Sign up to OdShare',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ////////////////////////////////////////////////////////////////////////Textfield1
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  fillColor: Color(0xffE6E6E6),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),// Hint text color
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Border color when focused
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ////////////////////////////////////////////////////////////////////login button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signup2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0DA600), // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(vertical: 10.0), // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Rounded corners
                    ),
                  ),
                  child: Text('Continue',style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
              ),
              const SizedBox(height: 10),
              ////////////////////////////////////////////////////////////////////dividers
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              ////////////////////////////////////////////////////////////////////login with google
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.google,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Continue with Google',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ////////////////////////////////////////////////////////////////////login with facebook
              ElevatedButton(
                onPressed: () {
                  // Handle login with Facebook
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(width: 8),
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ////////////////////////////////////////////////////////////////////login with X
              ElevatedButton(
                onPressed: () {
                  // Handle login with Facebook
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.xingSquare,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Continue with X',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              /////////////////////////////////////////////////////////////////////last text
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'By Continuing, you agree to our ',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ), // Change the color for 'Od'
                    ),
                    TextSpan(
                      text: ' terms and condition',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0DA600), // Change the color for 'Car'
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ), // Change the color for 'Od'
                    ),
                    TextSpan(
                      text: ' privacy policy',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0DA600), // Change the color for 'Car'
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
