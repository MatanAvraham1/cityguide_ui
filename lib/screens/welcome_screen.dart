import 'package:cityguide/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cityguide",
                style: GoogleFonts.pacifico(
                  fontSize: 118.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 197.h,
              ),
              Text(
                " Explore the best places of the world's\nmost vibrant cities!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 30.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 166.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
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
                height: 39.h,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.symmetric(
                        vertical: 34.h, horizontal: 256.w)),
                child: Text(
                  "Register",
                  style: GoogleFonts.lato(
                    fontSize: 30.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
