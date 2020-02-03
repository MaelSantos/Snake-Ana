import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snake_ana/view/entrada.dart';
import 'package:snake_ana/view/principal.dart';

void main() => runApp(GameSnake());

class GameSnake extends StatelessWidget {
  GameSnake() {
    WidgetsFlutterBinding.ensureInitialized();

    Flame.images.loadAll([
      "sprites/cobra-de-ana.png",
      "icon.png",
    ]);

    Flame.util.fullScreen();
    Flame.util.setOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              body1: TextStyle(fontSize: 24),
            )),
        home: Entrada(),
        routes: {
          "/Game": (BuildContext context) => Principal(),
        });
  }
}
