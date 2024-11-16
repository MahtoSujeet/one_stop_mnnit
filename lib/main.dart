import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_stop_mnnit/pages/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: const Color(0xFF007D6E),
      colorScheme: ColorScheme.light(secondary: const Color(0xFF007D6E)),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
