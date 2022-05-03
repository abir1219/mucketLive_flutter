import 'package:flutter/material.dart';
import 'package:mucket_flutter/Screens/TabController/Login_Reg_TabController/Registration/Registration.dart';

import 'Login/Login.dart';

class LoginRegTabController extends StatelessWidget {
  const LoginRegTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Form(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/login_background_new.jpg",
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 180,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/logo.png",
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: IconButton(
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {}),
                    )
                  ],
                ),
                const TabBar(
                  indicator: BoxDecoration(
                    color: Colors.green, // Color(0xFF5D8801),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Registration",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                    child: TabBarView(
                  children: [
                    Center(
                      child: Login(),
                    ),
                    Center(
                      child: Registration(),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
