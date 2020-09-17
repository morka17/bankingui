import 'package:exaltedvision/page3_login.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/signup.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const String id = '/page2';
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  PageController _pageController;
  Color activePageColor = Colors.white;
  Color inactivePageColor = Colors.white30;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          PageWidget(
            pageTitle: 'Smart Wallet',
            pageContent:
                'Managing Your money can be the\n easiest thing you do all day',
            size: size,
            activePageColor: activePageColor,
            inactivePageColor: inactivePageColor,
            iconWidget: Icon(
              Icons.account_balance_wallet,
              color: Colors.green,
              size: 100.0,
            ),
            indicatorIndex: 0,
          ),
          PageWidget(
            size: size,
            pageTitle: 'Effortless Budgeting',
            pageContent:
                'Customize your budget categories and\nstay on top of your spending 24/7.',
            activePageColor: activePageColor,
            inactivePageColor: inactivePageColor,
            iconWidget: Icon(
              Icons.account_balance_wallet,
              color: Colors.green,
              size: 100.0,
            ),
            indicatorIndex: 1,
          ),
          PageWidget(
            size: size,
            pageTitle: 'Automatic Savings',
            pageContent:
              'Set your savings goal. and let Empower\n figure out how to get you there.',
            activePageColor: activePageColor,
            inactivePageColor: inactivePageColor,
            iconWidget: Icon(
              Icons.account_balance_wallet,
              color: Colors.green,
              size: 100.0,
            ),
            indicatorIndex: 2,
          ),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  const PageWidget({
    Key key,
    @required this.size,
    @required this.activePageColor,
    @required this.inactivePageColor,
    @required this.iconWidget,
    @required this.pageTitle,
    @required this.pageContent,
    @required this.indicatorIndex,
  }) : super(key: key);

  final String pageTitle;
  final String pageContent;
  final Size size;
  final Color activePageColor;
  final Color inactivePageColor;
  final Widget iconWidget;
  final int indicatorIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff4D61EE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: size.height * 0.471,
            child: Center(
              child: Container(
                height: size.height * 0.28,
                width: size.width * 0.54,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff5A63EF),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  padding: EdgeInsets.all(12.0),
                  child: iconWidget,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              pageTitle,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(18.0),
            child: Text(
              pageContent,
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Indicator(
                  radius: indicatorIndex == 0 ? 5 : 4,
                  color:
                      indicatorIndex == 0 ? activePageColor : inactivePageColor,
                ),
                Indicator(
                  radius: indicatorIndex == 1 ? 5 : 4,
                  color:
                      indicatorIndex == 1 ? activePageColor : inactivePageColor,
                ),
                Indicator(
                  radius: indicatorIndex == 2 ? 5 : 4,
                  color:
                      indicatorIndex == 2 ? activePageColor : inactivePageColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 27.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: DefaultButton2(
                    textColor: Color(0xff4D61EE),
                    textLabel: 'Log In',
                    onTap: ()=> Navigator.pushNamed(context, LoginPage.id),
                  ),
                ),
                Container(
                  child: DefaultButton2(
                    textLabel: 'Sign In',
                    color: Color(0xff131637),
                    textColor: Colors.white,
                    onTap: ()=> Navigator.pushNamed(context, SignUp.id),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final double radius;
  const Indicator({Key key, this.color, @required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color,
            radius: radius,
          ),
        ],
      ),
    );
  }
}
