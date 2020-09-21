import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  static const String id = '/new_account';
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        color: Colors.black,
        height: size.height,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
