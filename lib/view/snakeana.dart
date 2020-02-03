import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snake_ana/model/cobra.dart';

class SnakeAna extends BaseGame {
  Cobra cobra;

  SnakeAna() {
    cobra = Cobra();
    add(cobra);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
  }

  @override
  void resize(Size size) {
    super.resize(size);
  }
}
