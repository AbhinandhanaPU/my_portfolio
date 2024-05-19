import 'package:flutter/material.dart';
import 'package:my_portfolio/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My portfolio',
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
