import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_place_smart_ui/pages/nav_page/bar_item_page.dart';
import 'package:tourist_place_smart_ui/pages/nav_page/my_page.dart';
import 'package:tourist_place_smart_ui/pages/nav_page/search_page.dart';

import '../home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages =[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
      setState(() {
        currentIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apartment)),
          BottomNavigationBarItem(label:"Bar",icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"My",icon: Icon(Icons.person)),


        ],
      ),
    );
  }
}
