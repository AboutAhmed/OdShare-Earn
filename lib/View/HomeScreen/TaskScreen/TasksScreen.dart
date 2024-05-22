import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odshare_earn/View/HomeScreen/TaskScreen/CustomContainer.dart';
import 'package:odshare_earn/View/HomeScreen/HomeScreen.dart';
import 'package:odshare_earn/View/HomeScreen/OdSharePoints.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  void _startTask() {
    // Handle start task action
  }

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OdSharePoints()), // Change NextScreen() to your next screen
      );
    }
    else if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Change NextScreen() to your next screen
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
        appBar:AppBar(
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
                'Tasks',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended tasks',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.tune),
                  ],
                ),
              ),
              TaskContainer(
                taskTitle: 'Subscribe 3 youtube channels',
                points: '25.1 pt',
                createdOn: '12 Minutes Ago',
                remainingDays: '5',
                onStartTask: _startTask,
              ),
              const Divider(),
              TaskContainer(
                taskTitle: 'Subscribe 3 youtube channels',
                points: '25.1 pt',
                createdOn: '12 Minutes Ago',
                remainingDays: '5',
                onStartTask: _startTask,
              ),
              const Divider(),
              TaskContainer(
                taskTitle: 'Subscribe 3 youtube channels',
                points: '25.1 pt',
                createdOn: '12 Minutes Ago',
                remainingDays: '5',
                onStartTask: _startTask,
              ),
              const Divider(),
              TaskContainer(
                taskTitle: 'Subscribe 3 youtube channels',
                points: '25.1 pt',
                createdOn: '12 Minutes Ago',
                remainingDays: '5',
                onStartTask: _startTask,
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
