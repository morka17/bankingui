import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/send_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = '/home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor:Color(0xff3341A5),
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () => print('hello world'),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xff000000),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 23.0,
              ),
              Flexible(
                child: Card(
                  color: Color(0xf000000),
                  elevation: 7.0,
                  child: Container(
                    // margin: EdgeInsets.only(left: 19.0),
                    width: size.width * .9,
                    height: size.height * .18,
                    decoration: BoxDecoration(
                      color: Color(0xFF010210),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left:6.0, top: 5.0,),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Main Balance  ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0),
                              ),
                              Text(
                                '   0983527182',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:6.0),
                          width: size.width * 0.6,
                          child: Text(
                            '\$ 340.78',
                            style: TextStyle(
                               color: Color(0xff3341A5),
                                fontSize: 30.0, fontWeight: FontWeight.w900),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right:6.0, bottom: 6.0),
                          alignment: Alignment.topRight,
                          child: MaterialButton(
                            elevation: 3.0,
                            onPressed: ()=>print('copied'),
                            child: Tooltip(
                              decoration: BoxDecoration(
                                color: Colors.white
                              ),
                              message: 'Copied',
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF283283),
                                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                ),
                                height: 35.0,
                                width: 70.0,
                                alignment: Alignment.centerRight,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      ' Copy ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.content_copy,
                                    color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: size.height * .19,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SubAccountBoard(size: size),
                    SizedBox(
                      width: 12.0,
                    ),
                    SubAccountBoard(size: size),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              CreateAccBtn(size: size),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, SendPage.id),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    textLabel: 'Send Money', 
                    onTap: null,
                    width: size.width * 0.9,
                    height: 45.0,
                    btnIcon: Icons.send,
                    color: Color(0xFF283283),
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

class CreateAccBtn extends StatelessWidget {
  const CreateAccBtn({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(bottom:7.0, left: 16.0),
      child: Card(
        elevation: 7.0,
        color: Color(0xff000000),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff387969),
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
          height: size.height * .19,
          width: size.width /2.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom:14.0),
                child: Text(
                  'Open new account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubAccountBoard extends StatelessWidget {
  const SubAccountBoard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        color: Color(0xff000000),
        elevation: 7.0,
        child: Container(
          height: size.height * .19,
          width: size.width /2.3,
          decoration: BoxDecoration(
            color: Color(0xff010210),
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom:7.0, left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Balance ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                         ),
                    ),
                    Text(
                      '0983527182',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                         fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(   
                padding: EdgeInsets.only(bottom:7.0, left: 8.0),
                width: size.width * 0.6,
                child: Text(
                  '\$ 340.78',
                  style: TextStyle(fontSize: 23.0,color: Color(0xff3341A5), fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// …or push an existing repository from the command line
// git remote add origin https://github.com/morka17/bankingui.git
// git branch -M master
// git push -u origin master