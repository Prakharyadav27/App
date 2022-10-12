import 'package:flutter/material.dart';
import 'package:university/screens/Bus_details.dart';
import 'package:university/screens/Homescreen.dart';
import 'package:university/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash_screen.id,
      routes: {
        Splash_screen.id: (context) => const Splash_screen(),
        Home_Screen.id: (context) => const Home_Screen(),
        Bus_Details.id: (context) => const Bus_Details(),
      },
    );
  }
}
