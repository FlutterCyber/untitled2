import 'package:flutter/material.dart';
import 'package:untitled2/home_page.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  static const String id = "lottie_page";

  const LottiePage({Key? key}) : super(key: key);

  @override
  State<LottiePage> createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage>with SingleTickerProviderStateMixin {
  //late final AnimationController _controller = AnimationController(vsync: this);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_controller = AnimationController();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/lotties/delivery.json',

        ),
      ),
    );
  }
}
