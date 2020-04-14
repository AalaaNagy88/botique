import 'package:botique/products.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatefulWidget {
  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;
  ProductsDetails(
      {this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice});
}

class _ProductsDetailsState extends State<ProductsDetails> {
  var size="X";
  var val;
  setSelectedValue(var val){
    size=val;
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Clothing Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
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
          body: ListView(
            children: <Widget>[
              Container(
                height: 300,
                color: Colors.white,
                child: GridTile(
                  child: Image.asset(widget.productPicture),
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        widget.productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "\$${widget.productOldPrice}",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "\$${widget.productPrice}",
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                        textColor: Colors.grey,
//                        onPressed: (){
//                          showDialog(context: context,builder: (context){
//                            return AlertDialog(
//                              title: Text("Choose Size"),
//                              content:StatefulBuilder(builder: (BuildContext context, StateSetter setState){
//                                return  Column(
//                                  mainAxisSize: MainAxisSize.min,
//                                  children: <Widget>[
//                                    ListTile(
//                                      title: Text("X"),
//                                      trailing: Radio(value: "X", groupValue: size, onChanged: (val){
//                                        setState(() {
//                                          setSelectedValue(val);
//                                        });
//                                      }),
//                                    ),
//                                    ListTile(
//                                      title: Text("XX"),
//                                      trailing: Radio(value: "2X", groupValue: size, onChanged: (val){
//                                        setState(() {
//                                          setSelectedValue(val);
//                                        });
//                                      }),
//                                    ),
//                                    ListTile(
//                                      title: Text("XXX"),
//                                      trailing: Radio(value: "3X", groupValue: size, onChanged: (val){
//                                        setState(() {
//                                          setSelectedValue(val);
//                                        });
//                                      }),
//                                    )
//                                  ],
//                                );
//                              })
//                            );
//                          });
//                        },
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Size"),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: MaterialButton(
                        textColor: Colors.grey,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Color"),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: MaterialButton(
                        textColor: Colors.grey,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Num"),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        )),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      elevation: 0.0,
                      color: Colors.red,
                      child: Text("Buy Now"),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                ],
              ),
              ListTile(
                title: Text("Product Detalis"),
                subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ),
              ListTile(
                title: Text("Related item"),
                subtitle:Products(),
              )
            ],
          )),
    );
  }
}
