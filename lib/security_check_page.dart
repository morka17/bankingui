import 'package:exaltedvision/resuable_inputfield.dart';
import 'package:flutter/material.dart';

class SecurityCheckPage extends StatefulWidget {
  static const String id = '/security_page';
  @override
  _SecurityCheckPageState createState() => _SecurityCheckPageState();
}

class _SecurityCheckPageState extends State<SecurityCheckPage> {
  // TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      'Security Check',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: size.width,
                height: size.height * .35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0x3D6167B3),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Icon(
                        Icons.security,
                        size: 30.0,
                        color: Color(0xff5a63ef),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Please enter your transfer code',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: size.width * 0.4,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          PasswordBox(),
                          PasswordBox(),
                          PasswordBox(),
                          PasswordBox(),
                        ],
                      ),
                    ),
                   Container(
                     child: Text(
                       'OR',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w200,
                         fontSize: 20.0
                       ),
                     ),
                   ),
                   Container(
                     alignment: Alignment.center,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Icon(
                           Icons.fingerprint,
                           size: 30.0,
                           color: Colors.green,
                         ),
                         Text(
                           'Continue with fingerprint',
                           style: TextStyle(
                             color: Colors.green,
                             fontWeight: FontWeight.w500,
                             fontSize: 18.0
                           ),
                         )
                       ],
                     ),
                   ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 0,
      child: TextField(
        style: TextStyle(color: Colors.white),
        maxLength: 1,
        decoration: KinputDecoration,
      )
    );
  }
}
