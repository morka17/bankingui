import 'package:exaltedvision/home.dart';
import 'package:exaltedvision/resuable_inputfield.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const String id = '/sign_up';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _pweditingController = TextEditingController();
  TextEditingController _eneditingController = TextEditingController();
  TextEditingController _fneditingController = TextEditingController();
  String email;
  String name;
  String pwd;

  void _showAlert(String errMessage, context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            'Error',
            style: TextStyle(color: Colors.red),
          ),
          content: Text(
            errMessage,
            style:
                TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w400),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Ok',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  color: Color(0xff292765),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * .10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 28.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Experience banking the way you\'ve always\nwanted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: size.height * 0.25,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Colors.black,
                  ),
                  height: size.height * 0.55,
                  width: size.width * 0.85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 19.0,
                      ),
                      Container(
                        width: size.width * 0.73,
                        height: 52.0,
                        padding: EdgeInsets.all(5.0),
                        child: ScreenTextFields(
                          lableText: 'Name*',
                          label: 'Name',
                          onchange: (value) {
                            name = value;
                          },
                          obscure: false,
                          textEditingController: _fneditingController,
                          textInputType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        width: size.width * 0.73,
                        height: 52.0,
                        padding: EdgeInsets.all(5.0),
                        child: ScreenTextFields(
                          lableText: 'Email*',
                          label: 'example19@gmail.com',
                          onchange: (value) => email = value,
                          obscure: false,
                          textEditingController: _eneditingController,
                          textInputType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        width: size.width * 0.73,
                        height: 52.0,
                        padding: EdgeInsets.all(5.0),
                        child: ScreenTextFields(
                          lableText: 'Password*',
                          label: 'Password',
                          onchange: (value) {
                            pwd = value;
                          },
                          obscure: true,
                          textEditingController: _pweditingController,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      Container(
                        width: size.width * 0.8,
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Container(
                        child: DefaultButton2(
                          textLabel: 'Get Started',
                          color: Color(0xff4d61ee),
                          onTap: () {
                            if (email != null && pwd != null && name != null) {
                              Navigator.pushNamed(context, HomePage.id);
                            } else if (email.isEmpty) {
                              _showAlert('Invaild emaill address', context);
                            } else if (name.isEmpty){
                              _showAlert('Enter your name*', context);
                            } else if (pwd.isEmpty)
                              _showAlert('Enter your password', context);
                            else {
                              _showAlert('Fill out the Boxes', context);
                            }
                          },
                          width: size.width * 0.6,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Been here before?',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.1,
                bottom: size.height * 0.08,
                child: Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    softWrap: true,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'By signing up you agree to our '),
                        TextSpan(
                            text: 'Terms of use ',
                            style: TextStyle(color: Colors.greenAccent)),
                        TextSpan(text: 'and\n '),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Colors.greenAccent))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
