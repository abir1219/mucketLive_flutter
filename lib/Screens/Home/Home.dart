import 'package:flutter/material.dart';
import 'package:mucket_flutter/Widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          actions: const[
            Icon(Icons.shopping_bag,size: 28,),SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}
