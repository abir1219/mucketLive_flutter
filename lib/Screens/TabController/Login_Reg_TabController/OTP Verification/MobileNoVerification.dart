import 'package:flutter/material.dart';
import 'package:mucket_flutter/Screens/TabController/Login_Reg_TabController/Registration/Registration.dart';

class MobileNoVerification extends StatefulWidget {
  const MobileNoVerification({Key? key}) : super(key: key);

  @override
  State<MobileNoVerification> createState() => _MobileNoVerificationState();
}

class _MobileNoVerificationState extends State<MobileNoVerification> {
  bool _isOtpSent = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLength: 10,
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
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                      print("_isOtpSent: "+_isOtpSent.toString());
                      _isOtpSent ? Registration() : _isOtpSent = true;
                    });
                  },
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
