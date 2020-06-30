import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_alumni/main.dart';
import 'package:portal_alumni/notification.dart';
import 'package:portal_alumni/profil.dart';
import 'package:portal_alumni/search.dart';
import 'package:portal_alumni/notif2.dart';
import 'package:portal_alumni/shared/theme.dart';



class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int bottomNavBarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(color: accentColor1),
        SafeArea(
          child: Container(
            color: Color(0xFFF6F7F9),
          ),
        ),
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              bottomNavBarIndex = index;
            });
          },
          children: <Widget>[
            Search(),
            Notif(),
            Profile(),
            
          ],
        ),
        createCustomBottomNavbar(),
      ],
    ));
  }

  Widget createCustomBottomNavbar() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: bottomNavBarIndex,
              onTap: (index) {
                setState(() {
                  bottomNavBarIndex = index;
                  pageController.jumpToPage(index);
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: Text("Search",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.search)),
                BottomNavigationBarItem(
                    title: Text("Notification",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.notifications_active)),
                BottomNavigationBarItem(
                    title: Text("Profile",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.account_circle))
              ]),
        ),
      );
}
