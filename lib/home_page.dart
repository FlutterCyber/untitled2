import 'package:flutter/material.dart';
import 'package:untitled2/lottie_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, LottiePage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Billabong",
            fontSize: 30,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 30, fontFamily: "Fantasy"),
        ),
      ),
    );
  }
}
