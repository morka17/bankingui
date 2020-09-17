import 'package:exaltedvision/home.dart';
import 'package:exaltedvision/page2.dart';
import 'package:exaltedvision/page3_login.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        Page2.id: (context) => Page2(),
        LoginPage.id: (context) => LoginPage(),
        SignUp.id: (context) => SignUp(),
        HomePage.id: (context)=> HomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String id = '/page1';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Color(0xff131637),
                height: size.height,
                width: size.width * 0.8,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 18.0, left: 22.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 6.0),
                          child: Text(
                            'Swiftza',
                            style: TextStyle(
                                color: Color(0xff8D8E9D),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Digital\nBanking\nthat works for \nyou.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 35.0),
                          textScaleFactor: 1.3,
                        ),
                      ),
                      DefaultButton(
                        textColor: Color(0xff4D61EE),
                        iconColor: Color(0xff4D61EE),
                        onTap: () => Navigator.pushNamed(context, Page2.id),
                        textLabel: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xff4D61EE),
                height: size.height,
                width: size.width * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
