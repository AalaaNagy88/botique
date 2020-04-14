import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImagesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        dotSize: 4,
        indicatorBgPadding: 2,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        dotBgColor: Colors.transparent,
      ),
    );
  }
}
