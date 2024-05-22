import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odshare_earn/View/HomeScreen/ChoosePlatformScreen.dart';
import 'package:odshare_earn/View/HomeScreen/HomeScreen.dart';
import 'package:odshare_earn/View/HomeScreen/OdSharePoints.dart';
import 'package:odshare_earn/View/HomeScreen/TaskScreen/TasksScreen.dart';

class MyPerformance extends StatefulWidget {
  const MyPerformance({super.key});

  @override
  State<MyPerformance> createState() => _MyPerformanceState();
}

class _MyPerformanceState extends State<MyPerformance> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TasksScreen()), // Change NextScreen() to your next screen
      );
    }
    else if (index == 1) {
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
                'My Performance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            SizedBox(width: 50,),
            Icon(Icons.tune,color: Colors.white,),          ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ////////////////////////////////////////////////////////////////////////////Container 1
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.youtube, size: 20.0, color: Colors.red,),
                            const Text('Subscribe 3 youtube channels', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('16 Nov,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 2
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                // Bottom teal layer
                                Transform.translate(
                                  offset: Offset(-2, 2),
                                  child: FaIcon(
                                    FontAwesomeIcons.tiktok,
                                    size: 20.0,
                                    color: Colors.teal,
                                  ),
                                ),
                                // Middle black layer
                                Transform.translate(
                                  offset: Offset(2, -2),
                                  child: FaIcon(
                                    FontAwesomeIcons.tiktok,
                                    size: 20.0,
                                    color: Colors.red,
                                  ),
                                ),
                                // Top red layer
                                FaIcon(
                                  FontAwesomeIcons.tiktok,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            const Text(
                              'Comments on 8 tiktok videos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('15 Nov,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 3
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.facebook, size: 20.0, color: Colors.blue,),
                            const Text('Like 15 facebook Pages', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('23 Nov,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 4
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.alternate_email_rounded, // Placeholder for YouTube icon
                              color: Colors.white,
                              size: 20.0,
                            ),
                            const Text('Like 15 thread posts', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.orange),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('8 Dec,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange,
                              ),
                              child:  const Center(
                                child: Text(
                                  'InProgress',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 5
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.youtube, size: 20.0, color: Colors.red,),
                            const Text('Comments on youtube videos', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.red),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('29 Oct,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Failed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 6
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.youtube, size: 20.0, color: Colors.red,),
                            const Text('Subscribe 5 youtube channels', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('16 Nov,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
                SizedBox(height: 10,),
                ////////////////////////////////////////////////////////////////////////////Container 7
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.youtube, size: 20.0, color: Colors.red,),
                            const Text('Subscribe 3 youtube channels', style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text('25.1 pt', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('16 Nov,2023', style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child:  const Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
      
                ),
              ],
            ),
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
