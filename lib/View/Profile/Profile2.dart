import 'package:flutter/material.dart';
import 'package:odshare_earn/View/Profile/Profile3.dart';
import 'package:odshare_earn/View/Profile/ProfileScreen.dart';

class Profile2 extends StatefulWidget {
  final double progressValue;

  const Profile2({Key? key, required this.progressValue}) : super(key: key);

  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()), // Change NextScreen() to your next screen
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
                    _progressValue == 1.0 ? Color(0xff0DA600) : Color(0xff0DA600),
                  ),
                ),
                SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Welcome to OdShare! What is your name?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Make sure it matches your passport or government ID card',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 30),
                const Text(
                  'First Name',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your first name',
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
                SizedBox(height: 10),
                const Text(
                  'Middle Name (Optional)',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your middle name',
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
                SizedBox(height: 10),
                const Text(
                  'Last Name',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your last name',
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
                SizedBox(height: 150),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementProgress();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Profile3(progressValue: _progressValue)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0DA600),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
      ),
    );
  }
}
