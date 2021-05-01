import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_design/SignUpPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/head_frame.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text("Welcome Back!",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 35,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 400, height: 50),
                    child: ElevatedButton(
                      child: Text(
                        "continue with facebook".toUpperCase(),
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        BorderSide(color: Colors.deepPurple))),
                      ),
                      onPressed: () => null,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 400, height: 50),
                    child: ElevatedButton(
                      child: Text(
                        "continue with google".toUpperCase(),
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.grey))),
                      ),
                      onPressed: () => null,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("OR LOGIN WITH EMAIL",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter email",
                      hintText: "abc@gmail.com",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      hintText: "******",
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 400, height: 50),
                    child: ElevatedButton(
                      child: Text(
                        "log in".toUpperCase(),
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
                      onPressed: () => null,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: ' NEW TO SILENT MOON ? ',
                        style: TextStyle(color: Colors.grey)),
                    new TextSpan(
                        text: 'SIGN UP NOW',
                        recognizer: new TapGestureRecognizer()..onTap = () => {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignUpPage()),
                          )
                        },
                        style: TextStyle(color: Colors.deepPurpleAccent)),
                      ]))
                ])),
          )
        ],
      ),
    ));
  }
}
