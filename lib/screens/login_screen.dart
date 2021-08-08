import 'package:cityguide/screens/locations_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            Column(
              children: [
                SizedBox(
                  height: 82.h,
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.lato(
                    fontSize: 60.sp,
                    color: Color(0xff2196f3),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 59.w),
                  child: Column(
                    children: [
                      TextField(
                        style: GoogleFonts.lato(
                          fontSize: 30.sp,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            size: 31.sp,
                          ),
                          hintText: "Your email address",
                          hintStyle: GoogleFonts.lato(
                            fontSize: 30.sp,
                            color: Color(0xffb6b6b6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      TextField(
                        // TODO: check the padding of the under line and remove the singleChildScrollView
                        style: GoogleFonts.lato(
                          fontSize: 30.sp,
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 31.sp,
                            ),
                            hintText: "Your password",
                            hintStyle: GoogleFonts.lato(
                              fontSize: 30.sp,
                              color: Color(0xffb6b6b6),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LocationsScreen(),
                    ));
                  },
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Color(0xff2195f3)),
                      padding: EdgeInsets.symmetric(
                          vertical: 34.h, horizontal: 279.w)),
                  child: Text(
                    "Login",
                    style: GoogleFonts.lato(
                      fontSize: 30.sp,
                      color: Color(0xff2196f3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff2195f3),
                      padding: EdgeInsets.symmetric(
                          vertical: 34.h, horizontal: 256.w)),
                  child: Text(
                    "Facebook",
                    style: GoogleFonts.lato(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 43.h,
                ),
                Text("Forget Passowrd?",
                    style: GoogleFonts.lato(
                        fontSize: 26.sp,
                        letterSpacing: 0.3.w,
                        color: Color(0xff727272))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildHeader(BuildContext context) {
    return Container(
      height: 436.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/welcome_background.png"),
            fit: BoxFit.cover,
            alignment: Alignment(-1, -0.9)),
      ),
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 50.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Cityguide",
                  style: GoogleFonts.pacifico(
                    fontSize: 118.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
