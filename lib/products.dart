import 'package:botique/products_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var prod_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Skrit",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 120,
      "price": 85
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: GridView.builder(
          itemCount: prod_list.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int i) {
            return Item(
              name: prod_list[i]["name"],
              picture: prod_list[i]["picture"],
              oldPrice: prod_list[i]["oldPrice"],
              price: prod_list[i]["price"],
            );
          }),
    );
  }
}

class Item extends StatelessWidget {
  final name;
  final picture;
  final oldPrice;
  final price;
  Item({this.name, this.picture, this.oldPrice, this.price});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductsDetails(
                productName: name,
                productPicture: picture,
                productOldPrice: oldPrice,
                productPrice: price,
              ))),
      child: Card(
        child: Hero(
            tag: name,
            child: GridTile(
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.red),
                    ),
                    subtitle: Text(
                      "\$$oldPrice",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  )),
            )),
      ),
    );
  }
}
