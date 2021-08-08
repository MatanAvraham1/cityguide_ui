import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 295.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/welcome_background.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment(-1, -0.9)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 259.h,
                width: 259.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(129.r),
                    color: Colors.white),
                child: Container(
                  height: 233.h,
                  width: 233.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(116.r),
                      color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
