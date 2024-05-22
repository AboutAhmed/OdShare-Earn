import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:odshare_earn/View/HomeScreen/ChoosePlatformScreen.dart';
import 'package:odshare_earn/View/HomeScreen/OdSharePoints.dart';
import 'package:odshare_earn/View/HomeScreen/PerformanceScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isDropdownVisible = false;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChoosePlatformScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OdSharePoints()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///////////////////////////////////////////////////////////CustomAppbar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                        width: 10), // Space between menu icon and search bar
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for new tasks',
                          fillColor: Color(0xffE6E6E6),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            10), // Space between search bar and notification icon
                    Stack(
                      children: [
                        Icon(Icons.notifications_none),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        width:
                            10), // Space between notification icon and picture
                    CircleAvatar(
                      backgroundImage: AssetImage('lib/assets/Iconimage.png'),
                      radius: 18.0, // Adjust the size of the picture
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ////////////////////////////////////////////////////////////////////////////divider
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff17860D),
              ),
              SizedBox(
                height: 10,
              ),
              //////////////////////////////////////////////////////////////////////////maincontainer
              Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('lib/assets/coupon.png'),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Points Earned',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff0DA600),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            children: [
                              Text(
                                'Last 14 days',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Total Points Earned: ',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: '35 Points',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          _isDropdownVisible
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          color: Color(0xff0DA600),
                        ),
                        onPressed: () {
                          setState(() {
                            _isDropdownVisible = !_isDropdownVisible;
                          });
                        },
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        ' +32%',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ), // Move this text closer to the dropdown button
                    ],
                  ),
                  Visibility(
                    visible: _isDropdownVisible,
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'This Week',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1,
                                    height: 24,
                                    child: CustomPaint(
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  const Text(
                                    'This Month',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1,
                                    height: 24,
                                    child: CustomPaint(
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  const Text(
                                    'This Year',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '8 Points',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 1,
                                    height: 24,
                                    child: CustomPaint(
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  const Text(
                                    '16 Points',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 1,
                                    height: 24,
                                    child: CustomPaint(
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  const Text(
                                    '35 Points',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ///////////////////////////////////////////////////////////////////button
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff0DA600),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyPerformance()), // Change NextScreen() to your next screen
                          );
                        },
                        child: Text(
                          'View Details',
                          style: TextStyle(
                              color: Colors.white, fontSize: 18),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
              SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////////2nd Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pending Tasks',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ////////////////////////////////////////////////////////////////////////////divider
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.youtube,
                              size: 20.0,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Subscribe 3 youtube channels',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text(
                                  '25.1 pt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Created On: 12 Minutes Ago',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              'Remaining Days: 5',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color(0xff0DA600), // Background color
                                  foregroundColor:
                                      Colors.white, // Text color// Padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5), // Rounded corners
                                  ),
                                ),
                                child: const Text(
                                  'Start Task',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.flag,
                                      color: Colors.yellow,
                                      size: 12.0,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Report Task',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ////////////////////////////////////////////////////////////////////////////divider
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.youtube,
                              size: 20.0,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Subscribe 3 youtube channels',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Text(
                                  '25.1 pt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Created On: 12 Minutes Ago',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              'Remaining Days: 5',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color(0xff0DA600), // Background color
                                  foregroundColor:
                                      Colors.white, // Text color// Padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5), // Rounded corners
                                  ),
                                ),
                                child: const Text(
                                  'Start Task',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0DA600)),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.flag,
                                      color: Colors.yellow,
                                      size: 12.0,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Report Task',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //////////////////////////////////////////////////////////////////////3rd container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Task Analytics',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff0DA600),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  children: [
                                    Text(
                                      'Last 14 days',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ////////////////////////////////////////////////////////////////////////////divider
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Tasks Completed',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 210,
                              child: LinearPercentIndicator(
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 10,
                                percent: 0.7,
                                progressColor: Colors.green,
                                backgroundColor: Color(0xff0DA600),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '7/10 Completed',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ////////////////////////////////////////////////////////////////////////////divider
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Platform',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            Text(
                              'Task',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            Text(
                              'Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.youtube,
                              size: 20.0,
                              color: Colors.red,
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            const Text(
                              'Subscribe 3 youtube channels',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange,
                              ),
                              child: const Center(
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
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            const Text(
                              'Like 16 reels on tiktok',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child: const Center(
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
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            const Text(
                              'Comments on 8 tiktok videos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.white,
                            ),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child: const Center(
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
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xff0DA600),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyPerformance()), // Change NextScreen() to your next screen
                                );
                              },
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
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
                icon: Icon(Icons.list),
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
////////////////////////////////////////////////////////////////////////////////Verticle dotted divider in Main container
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1; // Adjust the thickness of the dotted line

    final double dashWidth = 5; // Adjust the width of each dash
    final double dashSpace = 3; // Adjust the space between dashes

    double startX = 0;
    while (startX < size.height) {
      canvas.drawLine(
        Offset(0, startX),
        Offset(0, startX + dashWidth),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
