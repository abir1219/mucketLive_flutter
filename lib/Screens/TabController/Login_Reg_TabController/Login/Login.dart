import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../Home/Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isNotVisible = true;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late var _emailController = TextEditingController();
  late var _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        //key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    focusNode: _emailFocusNode,
                    /*validator: (value){
                      //value.isEmpty ? return "Please enter email address" : return null;
                      if(value!.isEmpty){
                        return "Please enter email address";
                      }else{
                        return null;
                      }
                    },*/
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                      border: InputBorder.none,
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    focusNode: _passwordFocusNode,
                    controller: _passwordController,
                    obscureText: _isNotVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isNotVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 24,
                        ),
                        onPressed: () {
                          setState(() {
                            _isNotVisible = !_isNotVisible;
                          });
                        },
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            InkWell(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {
                    /*if (_formKey.currentState!.validate()) {
                      return;
                    }*/
                    if (_emailController.text.toString().isEmpty) {
                      //FlutterToast.show
                      Fluttertoast.showToast(msg: "Please Enter email address");
                      _emailFocusNode.requestFocus();
                    } else if (_passwordController.text.toString().isEmpty) {
                      Fluttertoast.showToast(msg: "Please Enter password");
                      _passwordFocusNode.requestFocus();
                    } else {
                      //Fluttertoast.showToast(msg: "Login");
                      //Home();
                      Navigator.of(context).pushReplacementNamed("/home");
                    }
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            GestureDetector(
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

}
