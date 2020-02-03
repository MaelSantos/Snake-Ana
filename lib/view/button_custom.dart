import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCustom extends StatelessWidget {
  Image image;
  String sourceImage;
  final Function onPressed;
  final double division;

  ButtonCustom(
      {this.onPressed, this.sourceImage, this.division = 0, this.image}) {
    if (image == null) mudarImagem(sourceImage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        // color: Colors.white,
        // margin: EdgeInsets.only(right: 5, top: division),
        child: FlatButton(
          // borderSide: BorderSide(
          //   color: Colors.black,
          // ),
          // highlightedBorderColor: Colors.black,
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: image,
        ));
  }

  void mudarImagem(String imagem) {
    sourceImage = imagem;
    image = Image.asset(sourceImage);
  }
}
