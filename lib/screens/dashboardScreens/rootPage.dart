import 'package:flutter/material.dart';
import 'package:p1final/json/constraints.dart';
import 'package:p1final/screens/dashboardScreens/cart.dart';
import 'package:p1final/screens/dashboardScreens/chat.dart';
import 'package:p1final/screens/dashboardScreens/homePage.dart';

import 'profilePage.dart';
import 'storePage.dart';

class RootPage extends StatefulWidget{
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab = 0;
  AppBar? appbar = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),

    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        StorePage(),
        AccountPage(),
        CartPage(),
        Chat(),
      ],

    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        appbar = null;
        break;
      case 3:
        appbar = null;
        break;
      case 4:
        return AppBar(
          title: Text('CHATBOT'),
        );
        break;

      default:
    }
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Color(0xfff5f7fa),
          // border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: activeTab == index ? Colors.blueGrey: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
              );
            })),
      ),
    );
  }


}
