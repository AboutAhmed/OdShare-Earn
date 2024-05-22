import 'package:flutter/material.dart';
import 'package:odshare_earn/View/HomeScreen/HomeScreen.dart';

class Profile8 extends StatefulWidget {
  final double progressValue;

  const Profile8({Key? key, required this.progressValue}) : super(key: key);

  @override
  State<Profile8> createState() => _Profile8State();
}

class _Profile8State extends State<Profile8> {
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _progressValue = widget.progressValue;
  }

  void _incrementProgress() {
    setState(() {
      _progressValue += 0.25; // Increment the progress value by 0.25 for each step
      if (_progressValue >= 1.0) {
        _progressValue = 1.0; // Ensure progress value does not exceed 1.0
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
                value: widget.progressValue,
                backgroundColor: Color(0xffE6E6E6),
                valueColor: AlwaysStoppedAnimation<Color>(
                  widget.progressValue == 1.0 ? Color(0xff0DA600) : Color(0xff0DA600),
                ),
              ),
              SizedBox(height: 80),
              const Center(
                child:  Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(0xff9bf7b2),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff0eaf36),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Center(
                child: Text(
                  'your account is created successfully !',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 150),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementProgress();
                    // Replace with the action you want to perform on button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()), // Change NextScreen() to your next screen
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
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
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
