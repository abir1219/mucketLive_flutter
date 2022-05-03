import 'package:flutter/material.dart';
import 'package:mucket_flutter/Screens/SplashScreen.dart';
import 'package:mucket_flutter/Screens/TabController/Login_Reg_TabController/LoginRegTabController.dart';

void main(){
  runApp(const Mucket());
}


class Mucket extends StatelessWidget {
  const Mucket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //#5D8801
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,//Color(0xFF5D8801)
      ),
      home: const SplashScreen(),
      routes: {
        "/loginReg" : (context) => const LoginRegTabController(),
      },
    );
  }
}
