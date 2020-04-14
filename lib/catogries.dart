import 'package:flutter/material.dart';

class HorizantalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catogries(cats_icon: "images/cats/tshirt.png",cats_name: "shirt",),
          Catogries(cats_icon: "images/cats/jeans.png",cats_name: "jeans",),
          Catogries(cats_icon: "images/cats/formal.png",cats_name: "formal",),
          Catogries(cats_icon: "images/cats/informal.png",cats_name: "informal",),
          Catogries(cats_icon: "images/cats/dress.png",cats_name: "dress",),
          Catogries(cats_icon: "images/cats/shoe.png",cats_name: "shoes",),
          Catogries(cats_icon: "images/cats/accessories.png",cats_name: "jewallary",),

        ],
      ),
    );
  }
}

class Catogries extends StatelessWidget {
  final String  cats_icon;
  final String  cats_name;
  Catogries({this.cats_icon,this.cats_name});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print("Tapped");},
      child:Container(
        width: 80,
        child: ListTile(
            title:Image.asset(cats_icon,height: 40,width: 80,),
            subtitle:Text(cats_name,textAlign: TextAlign.center,style: TextStyle(fontSize: 12),)
        ),
      ) ,
    );
  }
}

