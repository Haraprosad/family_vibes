import 'package:family_vibes/colors.dart';
import 'package:family_vibes/my_app.dart';
import 'package:family_vibes/responsive/responsive_layout.dart';
import 'package:family_vibes/screens/mobile_screen_layout.dart';
import 'package:family_vibes/screens/web_screen_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter vibes',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(),
      webScreenLayout: WebScreenLayout(),),
    );
  }
}
