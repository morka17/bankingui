import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/security_check_page.dart';
import 'package:exaltedvision/send_page.dart';
import 'package:flutter/material.dart';

class OverViewPage extends StatefulWidget {
  static const String id = '/over_view';

  final String name;
  final String message;
  final String imageurl;
  final String amount;
  final String currency;

  const OverViewPage(
      {Key key,
      this.name,
      this.message,
      this.imageurl,
      this.amount,
      this.currency})
      : super(key: key);
  @override
  _OverViewPageState createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: size.width,
          height: size.height,
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
                      'Reviewed',
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
                height: 60.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                width: size.width,
                height: size.height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 24.0, bottom: 4.0),
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ContactCard(
                      image: widget.imageurl,
                      size: size,
                      name: '${widget.name}',
                      ontap: null,
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.0, bottom: 4.0),
                      child: Text(
                        'Amount',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.0, bottom: 4.0),
                      child: Text(
                        '${widget.currency}${widget.amount}',
                        style: TextStyle(color: Colors.white, fontSize: 27.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.0, bottom: 4.0),
                      child: Text(
                        'Message',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.0, bottom: 4.0),
                      child: Flexible(
                        child: Text(
                         widget.message != null? widget.message : '',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: DefaultButton2(
                  width: size.width * 0.75,
                  color: Colors.blue,
                  textColor: Colors.white,
                  textLabel: 'Send',
                  onTap: ()=> Navigator.pushNamed(context, SecurityCheckPage.id),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
