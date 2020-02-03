import 'package:flutter/material.dart';
import 'package:snake_ana/util.dart/direcao.dart';
import 'package:snake_ana/view/button_custom.dart';
import 'package:snake_ana/view/snakeana.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  SnakeAna snakeAna;

  _PrincipalState() {
    snakeAna = SnakeAna();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(alignment: Alignment.center, child: snakeAna.widget),
        Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonCustom(
                    sourceImage: "assets/images/icons/cima.png",
                    onPressed: () {
                      setState(() {
                        snakeAna.cobra.direcao = Direcao.cima;
                      });
                    }),
                ButtonCustom(
                    sourceImage: "assets/images/icons/baixo.png",
                    onPressed: () {
                      setState(() {
                        snakeAna.cobra.direcao = Direcao.baixo;
                      });
                    }),
                ButtonCustom(
                    sourceImage: "assets/images/icons/esquerda.png",
                    onPressed: () {
                      setState(() {
                        snakeAna.cobra.direcao = Direcao.esquerda;
                      });
                    }),
                ButtonCustom(
                    sourceImage: "assets/images/icons/direita.png",
                    onPressed: () {
                      setState(() {
                        snakeAna.cobra.direcao = Direcao.direita;
                      });
                    })
              ],
            )),
      ],
    ));
  }
}
