import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({Key? key}) : super(key: key);

  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2196f3),
        leadingWidth: 107.w,
        centerTitle: true,
        toolbarHeight: 108.h,
        title: Text(
          "Browse categories",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: Column(
          children: [
            SizedBox(
              height: 62.h,
            ),
            Row(
              children: [
                buildCategoryTile(
                    "Restaurants", "assets/images/restaurants.svg", 77.h),
                SizedBox(
                  width: 29.w,
                ),
                buildCategoryTile(
                  "Hotels",
                  "assets/images/hotels.svg",
                  68.h,
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                buildCategoryTile(
                    "Nightlife", "assets/images/nightlife.svg", 84.h),
                SizedBox(
                  width: 29.w,
                ),
                buildCategoryTile(
                  "Shopping",
                  "assets/images/shopping.svg",
                  80.h,
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                buildCategoryTile("Culture", "assets/images/culture.svg", 92.h),
                SizedBox(
                  width: 29.w,
                ),
                buildCategoryTile(
                  "Popular",
                  "assets/images/heart.svg",
                  72.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildCategoryTile(String title, String iconPath, double size) {
    return Container(
      height: 269.h,
      width: 301.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: Color(0xffb5b5b5),
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            height: size,
          ),
          SizedBox(
            height: 28.h,
          ),
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 30.sp,
              letterSpacing: 0.3.w,
            ),
          )
        ],
      ),
    );
  }
}
