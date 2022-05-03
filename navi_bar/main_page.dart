import 'package:flutter/material.dart';
import 'package:medical/navi_bar/Home_page.dart';
import 'package:medical/navi_bar/bar_item.dart';
import 'package:medical/navi_bar/my_page.dart';
import 'package:medical/navi_bar/search_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    MyPage(),
    BarItemPage(),
    SearchPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                title: Text('Home'), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                title: Text('Bar'), icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(
                title: Text('Search'), icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text('MY'), icon: Icon(Icons.person)),
          ]),
    );
  }
}
