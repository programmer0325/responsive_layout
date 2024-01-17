import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive_layout1.dart';
import 'package:responsive_layout/screens/mobile_screen_layout.dart';
import 'package:responsive_layout/screens/tablet_screen_layout.dart';
import 'package:responsive_layout/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "responsive App",
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout1(
          webScreenLayout: WebScreenLayout(),
          tabletScreenLayout: TabletScreenLayout(),
          mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
