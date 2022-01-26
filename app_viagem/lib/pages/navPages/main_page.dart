import 'package:app_viagem/pages/navPages/bar_item_page.dart';
import 'package:app_viagem/pages/navPages/home_page.dart';
import 'package:app_viagem/pages/navPages/my_page.dart';
import 'package:app_viagem/pages/navPages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];

  int currentIndex = 0;
  void onTap(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey
            .withOpacity(0.5), // quando estivermos na pagina para diferenciar
        showUnselectedLabels: false, //sem o nome da page
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text("Bar"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              title: Text("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("My"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
