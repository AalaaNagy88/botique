import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Alaa"),
          accountEmail: Text(
            "salaanagy4444@gmail.com",
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(color: Colors.red),
        ),
        DrawerOpts(opt_name:"My account" ,opt_icon: Icon(Icons.person,)),
        DrawerOpts(opt_name:"My orders" ,opt_icon: Icon(Icons.shopping_basket)),
        DrawerOpts(opt_name:"Catogeries" ,opt_icon: Icon(Icons.dashboard)),
        DrawerOpts(opt_name:"Favorites" ,opt_icon: Icon(Icons.favorite,color: Colors.red)),
        Divider(),
        DrawerOpts(opt_name:"Settings" ,opt_icon: Icon(Icons.settings,color: Colors.blue)),
        Divider(),
        DrawerOpts(opt_name:"About" ,opt_icon: Icon(Icons.help,color: Colors.green)),
      ],
    );
  }
}

class DrawerOpts extends StatelessWidget {
  final String opt_name;
  final Icon opt_icon;
  DrawerOpts({this.opt_name,this.opt_icon});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
      },
      child: ListTile(
        title: Text(opt_name),
        leading: opt_icon
      ),
    );
  }
}
