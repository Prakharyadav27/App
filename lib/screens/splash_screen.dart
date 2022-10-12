import 'dart:async';

import 'package:flutter/material.dart';
import 'package:university/const.dart';
import 'package:university/screens/Homescreen.dart';

class Splash_screen extends StatefulWidget {
  static String id = "splash_Screen";
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Home_Screen.id);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: swatch2,
      body: Center(
        child: 
        Image.asset("assets/gla.webp")
        // Image.network(
        //     "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ztt9zfvowzdfzk2ecuiu"),
      ),
    );
  }
}
