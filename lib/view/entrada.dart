import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class Entrada extends StatefulWidget {
  @override
  EntradaState createState() => EntradaState();
}

class EntradaState extends State<Entrada> {
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/Game');
  }

  startSplashScreenTimer() async {
    var _duration = Duration(seconds: 5); //duração de exibição
    return Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        body: Center(
            child: Container(
                height: 250,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icon.png", fit: BoxFit.contain),
                    Text("Snake Ana")
                  ],
                ))));
  }
}
