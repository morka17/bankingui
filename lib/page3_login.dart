import 'package:exaltedvision/home.dart';
import 'package:exaltedvision/resuable_inputfield.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _fneditingController = TextEditingController();
  TextEditingController _pweditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xff040404),
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
                        fontSize: 28.0
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Log into your account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.w400,
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
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  color: Colors.black,
                ),
                height: size.height * 0.49,
                width: size.width * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 23.0,
                    ),
                    Container(
                      width: size.width * 0.73,
                      height: 52.0,
                      padding: EdgeInsets.all(5.0),
                      child: ScreenTextFields(
                        lableText: 'Email*',
                        label: 'example19@gmail.com',
                        onchange: (value) => print(value),
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
                        lableText: 'Password*',
                        label: 'Password',
                        onchange: (value) => print(value),
                        obscure: true,
                        textEditingController: _pweditingController,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    Container(
                      width: size.width *0.8 ,
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password?',
                        style:TextStyle(
                          color: Colors.green,
                        ) ,
                      ),
                    ),
                    Container(
                      child: DefaultButton2(
                        textLabel: 'Continue', 
                        color: Color(0xff4d61ee),
                        onTap: ()=> Navigator.pushNamed(context, HomePage.id),
                        width: size.width * 0.6,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'New here?',
                            style: TextStyle(
                              color: Colors.white
                            ),
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
          ],
        ),
      ),
    );
  }
}

// class CurvedBottomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final roundingHeight = size.height * 3 / 5;

//     final filledRectangle =
//         Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);
//     final roundingRectangle = Rect.fromLTRB(
//         -5, size.height - roundingHeight * 2, size.width + 5, size.height);
//     final pi = 22 / 7;
//     final path = Path();
//     path.addRect(filledRectangle);
//     path.arcTo(roundingRectangle, pi, -pi, true);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldCliper) {
//     return true;
//   }
// }
