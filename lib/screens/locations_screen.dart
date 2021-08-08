import 'package:cityguide/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  _LocationsScreenState createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2196f3),
        leadingWidth: 107.w,
        centerTitle: true,
        toolbarHeight: 108.h,
        title: Text(
          "Location",
          style: GoogleFonts.lato(fontSize: 32.sp, letterSpacing: 0.3.w),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 50.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 50.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 640.h,
            ),
            Text(
              "New York City",
              style: GoogleFonts.lato(
                fontSize: 60.sp,
                letterSpacing: 0.3.w,
                color: Color(0xff2196f3),
              ),
            ),
            SizedBox(
              height: 52.h,
            ),
            Text(
              "Located at the southern tip of the State of New\nYork, the city is the center of the New York\nmetropolitan area, one of the most populous\nurban agglomerations in the world.",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 26.sp,
                letterSpacing: 0.3.w,
              ),
            ),
            SizedBox(
              height: 63.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff2196f3),
                  padding:
                      EdgeInsets.symmetric(vertical: 34.h, horizontal: 279.w)),
              child: Text(
                "Choose",
                style: GoogleFonts.lato(
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 49.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/dot.svg",
                  height: 25.h,
                  width: 25.w,
                  color: Color(0xff2195f3),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SvgPicture.asset(
                  "assets/images/dot.svg",
                  height: 17.h,
                  width: 17.w,
                  color: Color(0xffb5b5b5),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SvgPicture.asset(
                  "assets/images/dot.svg",
                  height: 17.h,
                  width: 17.w,
                  color: Color(0xffb5b5b5),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SvgPicture.asset(
                  "assets/images/dot.svg",
                  height: 17.h,
                  width: 17.w,
                  color: Color(0xffb5b5b5),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
