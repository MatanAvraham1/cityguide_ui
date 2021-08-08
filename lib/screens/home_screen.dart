import 'package:cityguide/screens/browse_screen.dart';
import 'package:cityguide/screens/locations_screen.dart';
import 'package:cityguide/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 1;
  final screens = [Container(), BrowseScreen(), Container(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_bottomNavIndex),
      bottomNavigationBar: Container(
        height: 148.h,
        child: BottomNavigationBar(
            onTap: (value) {
              if (value == 0) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LocationsScreen(),
                ));
              } else {
                setState(() {
                  _bottomNavIndex = value;
                });
              }
            },
            currentIndex: _bottomNavIndex,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                GoogleFonts.lato(fontSize: 24.sp, color: Color(0xffb5b5b5)),
            unselectedLabelStyle: GoogleFonts.lato(
              fontSize: 24.sp,
              color: Color(0xff2195f3),
            ),
            items: [
              BottomNavigationBarItem(
                  // icon: Icon(Icons.rounded_corner),
                  icon: Icon(
                    Icons.public,
                    size: 46.sp,
                    color: Color(0xffb5b5b5),
                  ),
                  activeIcon: Icon(
                    Icons.public,
                    size: 46.sp,
                    color: Color(0xff2195f3),
                  ),
                  label: "Location"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 46.sp,
                    color: Color(0xffb5b5b5),
                  ),
                  activeIcon: Icon(
                    Icons.menu,
                    size: 46.sp,
                    color: Color(0xff2195f3),
                  ),
                  label: "Browse"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    size: 46.sp,
                    color: Color(0xffb5b5b5),
                  ),
                  activeIcon: Icon(
                    Icons.favorite,
                    size: 46.sp,
                    color: Color(0xff2195f3),
                  ),
                  label: "Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 46.sp,
                    color: Color(0xffb5b5b5),
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    size: 46.sp,
                    color: Color(0xff2195f3),
                  ),
                  // icon: Icon(Icons.architecture),
                  label: "Profile"),
            ]),
      ),
    );
  }
}
