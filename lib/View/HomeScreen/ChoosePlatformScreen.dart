import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odshare_earn/View/HomeScreen/HomeScreen.dart';
import 'package:odshare_earn/View/HomeScreen/OdSharePoints.dart';
import 'package:odshare_earn/View/HomeScreen/PerformanceScreen.dart';
import 'package:odshare_earn/View/HomeScreen/TaskScreen/TasksScreen.dart';

class ChoosePlatformScreen extends StatefulWidget {
  const ChoosePlatformScreen({super.key});

  @override
  State<ChoosePlatformScreen> createState() => _ChoosePlatformScreenState();
}

class _ChoosePlatformScreenState extends State<ChoosePlatformScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Change NextScreen() to your next screen
      );
    }
    else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OdSharePoints()), // Change NextScreen() to your next screen
      );
    }
    else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0DA600),
          toolbarHeight: 80, // Adjust the height as per your requirement
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 30,
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose Platform',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 60), // Adjust the distance between IconButton and Text
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('Select which platform you would like to work on'),
              ),
              PlatformContainer(
                icon: FontAwesomeIcons.instagram,
                iconColor: Colors.white,
                backgroundColor: Colors.red,
                availableTasks: 25,
                estimatedPoints: 44,
                onTap: () {},
              ),
              Divider(),
              PlatformContainer(
                icon: FontAwesomeIcons.play,
                iconColor: Colors.white,
                backgroundColor: Colors.red,
                availableTasks: 25,
                estimatedPoints: 44,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TasksScreen()), // Change NextScreen() to your next screen
                  );
                },
              ),
              Divider(),
              PlatformContainer(
                icon: FontAwesomeIcons.facebookF,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                availableTasks: 25,
                estimatedPoints: 44,
                onTap: () {},
              ),
              Divider(),
              PlatformContainer(
                icon: FontAwesomeIcons.tiktok,
                iconColor: Colors.white,
                backgroundColor: Colors.black,
                availableTasks: 25,
                estimatedPoints: 44,
                onTap: () {},
              ),
            ],
          ),
        ),
        ////////////////////////////////////////////////////////////////////////////bottom nav bar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: 'Points',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Tasks',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
            backgroundColor: Color(0xff0DA600), // Set the background color here
          ),
        ),
      ),
    );
  }
}

class PlatformContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final int availableTasks;
  final int estimatedPoints;
  final VoidCallback onTap;

  const PlatformContainer({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.availableTasks,
    required this.estimatedPoints,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    FaIcon(
                      icon,
                      size: 40.0,
                      color: iconColor,
                    ),
                  ],
                ),
                Text(
                  '   Available tasks: $availableTasks\nEstimated points: $estimatedPoints',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
