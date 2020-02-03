import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';

class Cobra extends SpriteComponent {

  

  Cobra() {
    this.sprite = Sprite("sprites/cobra-de-ana.png");

    this.height = 90;
    this.width = 70;
    this.x += 2;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // sprite.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
    // this.x += 2;
  }

  @override
  void resize(Size size) {
    super.resize(size);
  }
}
