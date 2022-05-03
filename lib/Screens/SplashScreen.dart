import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),(){
        Navigator.of(context).pushReplacementNamed("/loginReg");
    }
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Lottie.asset("assets/animation/bucket.json", animate: true),
        ),
      ),
    );
  }
}
