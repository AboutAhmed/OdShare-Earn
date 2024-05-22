import 'package:flutter/material.dart';
import 'package:odshare_earn/View/Profile/Profile2.dart';
import 'package:odshare_earn/View/SignupSigninScreens/Signup2.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double _progressValue = 0.0;

  void _incrementProgress() {
    setState(() {
      _progressValue += 0.25; // Increment the progress value by 0.25 for each step
      if (_progressValue >= 1.0) {
        _progressValue = 1.0; // Ensure progress value does not exceed 1.0
      }
    });
  }

  void _skipStep() {
    setState(() {
      _progressValue = 1.0; // Set progress value to 1.0 to indicate completion
    });
  }

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
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Signup2()), // Change NextScreen() to your next screen
                  );
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xffE6E6E6),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              LinearProgressIndicator(
                value: _progressValue,
                backgroundColor: Color(0xffE6E6E6),
                valueColor: AlwaysStoppedAnimation<Color>(
                  _progressValue == 1.0 ? Color(0xff0DA600) : Color(0xff0DA600), // Change color when progress is complete
                ),
              ),
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'What is the username of your sponsor?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Text(
                'Please enter the username of your sponsor in the field below',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30),
              const Text(
                'Sponsor',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(
                  hintText: '@username',
                  fillColor: Color(0xffE6E6E6),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 250),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementProgress();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Profile2(progressValue: _progressValue)),
                    );// Call this method when "Continue" button is pressed
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
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    _skipStep(); // Call this method when "Skip" button is pressed
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text color
                  ),
                  child: Text('Skip',style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline, // Underline text
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
