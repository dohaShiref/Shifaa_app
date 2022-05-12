
import 'package:flutter/material.dart';
import 'package:iti_gp/MyProfile.dart';
import 'package:iti_gp/myActivity.dart';
import 'package:iti_gp/screens/home.dart';


class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,

          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Colors.white),
            child: BottomNavigationBar(
              onTap: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              currentIndex: currentPageIndex,
              selectedItemColor:Colors.blue,
              unselectedItemColor: Colors.black54,
              selectedIconTheme:
              IconThemeData(color:Colors.blue),
              unselectedIconTheme:
              IconThemeData(color: Colors.black54),
              items: [
                BottomNavigationBarItem(
                    icon:Icon(Icons.home_outlined,
                        size: 37,
                        color: currentPageIndex == 0
                            ?Colors.blue
                            : Colors.black54),
                    label: "Home"),
                BottomNavigationBarItem(
                    label: "My Activity",
                    icon: Icon(Icons.calendar_today_outlined,
                        size: 37,
                        color: currentPageIndex == 1
                            ? Colors.blue
                            : Colors.black54)),
                BottomNavigationBarItem(
                  label: "My Profile",
                    icon: Icon(Icons.person_pin_outlined,
                        size: 37,
                        color: currentPageIndex == 2
                            ? Colors.blue
                            : Colors.black54)),
              ],
            ),
          ),
          body: getCurrentPage(),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (currentPageIndex == 0) {
      return HomeScreen();
    } else if (currentPageIndex == 1) {
      return MyActivity();
    } else {
      return MyProfile();
    }
  }
}
