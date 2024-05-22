import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odshare_earn/View/Profile/Profile5.dart';

class Profile4 extends StatefulWidget {
  final double progressValue;

  const Profile4({Key? key, required this.progressValue}) : super(key: key);

  @override
  State<Profile4> createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {

  final TextEditingController _controller = TextEditingController();

  void _formatDate(String value) {
    final newValue = value.replaceAll(RegExp(r'\D'), ''); // Remove all non-digits

    if (newValue.length <= 4) {
      _controller.value = TextEditingValue(
        text: newValue,
        selection: TextSelection.collapsed(offset: newValue.length),
      );
    } else if (newValue.length <= 6) {
      final formatted = '${newValue.substring(0, 4)} | ${newValue.substring(4)}';
      _controller.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    } else if (newValue.length <= 8) {
      final formatted = '${newValue.substring(0, 4)} | ${newValue.substring(4, 6)} | ${newValue.substring(6)}';
      _controller.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    } else {
      final formatted = '${newValue.substring(0, 4)} | ${newValue.substring(4, 6)} | ${newValue.substring(6, 8)}';
      _controller.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }
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
                    'What is your Date of Birth',
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
                  'Date of Birth',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                hintText: 'YYYY | MM | DD',
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
              onChanged: _formatDate,
            ),
                SizedBox(height: 20),
                const Text('Year / month / day', style: TextStyle(
                  color: Color(0xff0DA600),
                ),),
                SizedBox(height: 270), // Add some space before the button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementProgress();
                      // Replace with the action you want to perform on button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile5(progressValue: _progressValue)), // Change NextScreen() to your next screen
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
      ),
    );
  }
}
