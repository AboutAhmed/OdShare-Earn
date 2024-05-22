import 'package:flutter/material.dart';
import 'package:odshare_earn/View/Profile/Profile4.dart';

class Profile3 extends StatefulWidget {
  final double progressValue;

  const Profile3({Key? key, required this.progressValue}) : super(key: key);

  @override
  State<Profile3> createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {

  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _countries = [
    {'name': 'United States', 'flag': '🇺🇸'},
    {'name': 'Canada', 'flag': '🇨🇦'},
    {'name': 'United Kingdom', 'flag': '🇬🇧'},
    {'name': 'Germany', 'flag': '🇩🇪'},
    {'name': 'France', 'flag': '🇫🇷'},
    // Add more countries as needed
  ];

  void _selectCountry(Map<String, String> country) {
    setState(() {
      _controller.text = country['flag']! + ' ' + country['name']!;
    });
    Navigator.pop(context);
  }

  void _showCountryPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Country/Region'),
          content: SingleChildScrollView(
            child: Column(
              children: _countries.map((country) {
                return ListTile(
                  leading: Text(country['flag']!),
                  title: Text(country['name']!),
                  onTap: () => _selectCountry(country),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

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
                    'What is your Nationality',
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
                  'Nationality',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Country/Region',
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
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  readOnly: true,
                  onTap: _showCountryPicker,
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'you may want to choose ',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Image.asset(
                            'lib/assets/United logo.png', // Ensure this path matches your asset's location
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text: ' United States',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 250), // Add some space before the button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementProgress();
                      // Replace with the action you want to perform on button press
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Profile4(progressValue: _progressValue)), // Change NextScreen() to your next screen
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
                    child: const Text(
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
