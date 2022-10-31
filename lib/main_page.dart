import 'package:flutter/material.dart';
import 'package:app1/pages/card/card_page.dart';
import 'package:app1/pages/home/home_Page.dart';
import 'package:app1/pages/notification/notification.dart';
import 'package:app1/pages/setting/setting_page/setting_page.dart';
import 'package:app1/pages/visit/visit.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    HomePage(),
    Visit(),
    CardPage(),
    NotificationPage(),
    SettingPage(),
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
        selectedItemColor: const Color(0xff134284),
        unselectedItemColor: const Color(0xff707070),
        elevation: 0,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Visit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
