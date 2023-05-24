import 'package:flutter/material.dart';
import 'package:untitled2/home_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /// initStatening vazifasi page ochilganda birinchi
  /// bo'lib ishga tushadigan funksiya
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("SALOM");
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("XAYRRR");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(50),
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/insta_logo.jpeg",
                  height: 80,
                  width: 80,
                ),
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
