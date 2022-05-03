import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isOtpSent = false;
  bool _hasOtpValidate = false;
  bool _isShowPassword = true;
  bool _isShowConfirmPassword = true;

  late FocusNode _validateMobileFocusNode;
  late FocusNode _validateOtpFocusNode;

  late FocusNode _firstNameFocusNode;
  late FocusNode _lastNameFocusNode;
  late FocusNode _emailAddressFocusNode;
  late FocusNode _mobileFocusNode;
  late FocusNode _passwordFocusNode;
  late FocusNode _confirmPasswordFocusNode;

  late var _validateMobileController = TextEditingController();
  late var _validateOtpController = TextEditingController();

  late var _firstNameController = TextEditingController();
  late var _lastNameController = TextEditingController();
  late var _emailAddressController = TextEditingController();
  late var _mobileNumberController = TextEditingController();
  late var _passwordController = TextEditingController();
  late var _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _validateMobileFocusNode = FocusNode();
    _validateOtpFocusNode = FocusNode();

    _firstNameFocusNode = FocusNode();
    _lastNameFocusNode = FocusNode();
    _emailAddressFocusNode = FocusNode();
    _mobileFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _validateMobileFocusNode.dispose();
    _validateOtpFocusNode.dispose();

    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailAddressFocusNode.dispose();
    _mobileFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _hasOtpValidate
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _firstNameFocusNode,
                          controller: _firstNameController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "First Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _lastNameFocusNode,
                          controller: _lastNameController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "Last Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _emailAddressFocusNode,
                          controller: _emailAddressController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "Email Address",
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _mobileFocusNode,
                          controller: _mobileNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "Mobile Number",
                            prefixIcon: Icon(Icons.phone_android),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _passwordFocusNode,
                          controller: _passwordController,
                          obscureText: _isShowPassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                _isShowPassword = !_isShowPassword;
                                setState(() {});
                              },
                              icon: Icon(_isShowPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          focusNode: _confirmPasswordFocusNode,
                          controller: _confirmPasswordController,
                          obscureText: _isShowConfirmPassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Confirm Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(_isShowConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                _isShowConfirmPassword =
                                    !_isShowConfirmPassword;
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: InkWell(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {
                            if(_firstNameController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please enter first Name");
                              _firstNameFocusNode.requestFocus();
                            }else if(_lastNameController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please enter last Name");
                              _lastNameFocusNode.requestFocus();
                            }else if(_emailAddressController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please enter email address");
                              _emailAddressFocusNode.requestFocus();
                            }else if(_mobileNumberController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please enter mobile number");
                              _mobileFocusNode.requestFocus();
                            }else if(_mobileNumberController.text.length != 10){
                              Fluttertoast.showToast(msg: "Please enter a mobile number");
                              _mobileFocusNode.requestFocus();
                            }else if(_passwordController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please enter a password");
                              _passwordFocusNode.requestFocus();
                            }else if(_confirmPasswordController.text.isEmpty){
                              Fluttertoast.showToast(msg: "Please confirm password");
                              _confirmPasswordFocusNode.requestFocus();
                            }else if(_passwordController.text.toString() != _confirmPasswordController.text.toString()){
                              Fluttertoast.showToast(msg: "Password mismatch");
                              _confirmPasswordFocusNode.requestFocus();
                            }else{
                              Fluttertoast.showToast(msg: "Signup");
                            }
                          },
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "Mobile Number",
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: _isOtpSent
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: "OTP",
                                prefixIcon: Icon(Icons.phone_android),
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: InkWell(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _isOtpSent
                                ? _hasOtpValidate = true
                                : _isOtpSent = true;
                          });
                        },
                        child: const Text(
                          "Send OTP",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
