import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'),
            ), accountEmail: Text(''), accountName: Text("Mucket Live"),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            title: Text("Home",style: TextStyle(fontSize: 15,),),
            leading: Icon(Icons.home),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            title: Text("Shop by Category",style: TextStyle(fontSize: 15,),),
            leading: Icon(Icons.category),
          ),
        ],
      ),
    );
  }
}
