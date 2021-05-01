import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_design/LoginPage.dart';
import 'package:flutter_login_design/SignUpPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStarted(),
  ));
}

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/bg_frame.svg',
              width: 423,
              height: 454,
              alignment: AlignmentDirectional.topStart,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/logo.svg',
                      width: 180,
                      height: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'assets/seating.svg',
                      width: 242.69,
                      height: 332.22,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "We are what we do",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Thousands of People are using silent moon for small meditation",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 400, height: 50),
                      child: ElevatedButton(
                        child: Text(
                          "sign up".toUpperCase(),
                          style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepPurpleAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.deepPurpleAccent))),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: ' ALREADY HAVE AN ACCOUNT ? ',
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: 'LOG IN',
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  )
                                },
                          style: TextStyle(color: Colors.deepPurpleAccent)),
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
