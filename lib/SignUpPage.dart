import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_design/LoginPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  bool _value1 = false;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value)
  {
   _value1 = false;
  }
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
                        height: 60,
                      ),
                      Text("Welcome Back!",
                          style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 30,
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
                        height: 20,
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
                        height: 15,
                      ),
                      Text("OR SIGN UP WITH EMAIL",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Username",
                          hintText: "john_01",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter email",
                          hintText: "abc@gmail.com",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
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
                          onPressed: () => null,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(value: _value1, onChanged: _value1Changed),
                          Text(
                          "I have read the Privacy Policy",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),]
                      ),
                      SizedBox(
                        height: 20,
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
                    ])),
              )
            ],
          ),
        )
    );
  }
}
