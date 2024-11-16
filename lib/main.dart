import 'package:flutter/material.dart';
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
      fontFamily: 'Montserrat',
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('One Stop MNNIT'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
