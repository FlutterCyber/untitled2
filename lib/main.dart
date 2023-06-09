import 'package:flutter/material.dart';
import 'package:untitled2/home_page.dart';
import 'package:untitled2/lottie_page.dart';
import 'package:untitled2/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        LottiePage.id: (context) => const LottiePage(),
      },
    );
  }
}
