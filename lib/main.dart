import 'package:botique/catogries.dart';
import 'package:botique/drawer.dart';
import 'package:botique/products.dart';
import 'package:flutter/material.dart';
import 'package:botique/images_carousel.dart';

main() => runApp(MaterialApp(
      title: "Clothing Store",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Clothing",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(child: DrawerBody()),
      body: ListView(
        children: <Widget>[
          ImagesCarousel(),
          Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Catgories",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          HorizantalList(),
          Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Recent Items",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Products()
        ],
      ),
    );
  }
}
