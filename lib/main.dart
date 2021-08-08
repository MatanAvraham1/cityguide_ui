import 'package:cityguide/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(751, 1335),
      builder: () => MaterialApp(
        home: WelcomeScreen(),
      ),
    );
  }
}
