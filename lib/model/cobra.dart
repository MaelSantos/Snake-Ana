import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:snake_ana/util.dart/direcao.dart';

class Cobra extends SpriteComponent {
  Direcao direcao;

  Cobra() {
    this.sprite = Sprite("sprites/cobra-de-ana.png");

    this.height = 90;
    this.width = 70;
    this.x += 2;

    direcao = Direcao.direita;
    // Dino(double x, double y, String caminho, this.cactos) : super(x, y) {
    // elementoSprite = SpriteSheet(
    //     columns: 24,
    //     rows: 1,
    //     textureWidth: 24,
    //     textureHeight: 24,
    //     imageName: caminho);

    // anmAndar =
    //     elementoSprite.createAnimation(0, stepTime: 0.1, from: 4, to: 10);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // sprite.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
    // mover();
  }

  @override
  void resize(Size size) {
    super.resize(size);
  }

  void mover() {
    
    switch (direcao.index) {
      case 0: //cima
        this.y -= 2;
        break;
      case 1: //baixo
        this.y += 2;
        break;
      case 2: //esquerda
        this.x -= 2;
        break;
      case 3: //direita
        this.x += 2;
        break;
      default:
    }
  }
}
