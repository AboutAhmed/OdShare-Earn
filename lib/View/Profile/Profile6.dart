import 'package:flutter/material.dart';
import 'package:odshare_earn/View/Profile/Profile7.dart';

class Profile6 extends StatefulWidget {
  final double progressValue;

  const Profile6({Key? key, required this.progressValue}) : super(key: key);

  @override
  State<Profile6> createState() => _Profile6State();
}

class _Profile6State extends State<Profile6> {
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
              SizedBox(height: 20),
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'Choose your profile picture',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Text(
                'Elevate your presence with a profile picture you adore',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  backgroundColor: Color(0xffE6E6E6),
                  radius: 200.0,
                  child: Image.asset('lib/assets/CircleA.png'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementProgress();
                    // Replace with the action you want to perform on button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile7(progressValue: _progressValue)), // Change NextScreen() to your next screen
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
                    'Take Picture',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),// Add some space before the button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementProgress();
                    // Replace with the action you want to perform on button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile7(progressValue: _progressValue)), // Change NextScreen() to your next screen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Background color// Text color
                    padding: EdgeInsets.symmetric(vertical: 10.0), // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Color(0xff0DA600), width: 1.0),// Rounded corners
                    ),
                  ),
                  child: Text(
                    'Choose From Gallery',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff0DA600)
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
