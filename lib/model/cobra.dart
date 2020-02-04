import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flame/spritesheet.dart';
import 'package:flutter/material.dart';
import 'package:snake_ana/util.dart/direcao.dart';

class Cobra extends SpriteComponent {
  SpriteSheet spriteSheet;
  List<Sprite> cabeca;
  List<Sprite> corpo;
  Direcao direcao;
  bool isLoop = true;

  Cobra() {
    this.sprite = Sprite("sprites/cobra-de-ana.png");
    this.height = 40;
    this.width = 40;

    direcao = Direcao.direita;

    spriteSheet = SpriteSheet(
        columns: 2,
        rows: 3,
        textureWidth: 32, //65
        textureHeight: 32, //97
        imageName: "sprites/cobra-de-ana.png");

    cabeca = List();
    cabeca.add(spriteSheet.getSprite(0, 0)); //cima
    cabeca.add(spriteSheet.getSprite(1, 1)); //baixo
    cabeca.add(spriteSheet.getSprite(0, 1)); //esquerda
    cabeca.add(spriteSheet.getSprite(2, 0)); //direita

    corpo = List();
    crescer();
    crescer();
    crescer();
    crescer();
  }

  @override
  void render(Canvas canvas) {
    // super.render(canvas);
    for (int i = 0; i < corpo.length; i++)
      switch (direcao.index) {
        case 0:
          corpo[i].renderRect(
              canvas, this.toRect().translate(0, (i * 35).toDouble()));
          break;
        case 1:
          corpo[i].renderRect(
              canvas, this.toRect().translate(0, -(i * 35).toDouble()));
          break;
        case 2:
          corpo[i].renderRect(
              canvas, this.toRect().translate((i * 35).toDouble(), 0));
          break;
        case 3:
          corpo[i].renderRect(
              canvas, this.toRect().translate(-(i * 35).toDouble(), 0));
          break;
        default:
          corpo[i].renderRect(canvas, this.toRect().translate(-35, -35));
      }

    cabeca[direcao.index].renderRect(canvas, this.toRect());
  }

  @override
  void update(double t) {
    if (isLoop) {
      super.update(t);
      mover();
    }
  }

  @override
  void resize(Size size) {
    super.resize(size);
  }

  void crescer() {
    corpo.add(spriteSheet.getSprite(1, 0));
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
