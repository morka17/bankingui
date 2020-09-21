import 'package:exaltedvision/resuable_inputfield.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/transfer_page.dart';
import 'package:flutter/material.dart';

class SendPage extends StatefulWidget {
  static const String id = '/send_page';
  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  TextEditingController _editingController = TextEditingController();
  String searchResult;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff000000),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          height: size.height,
          width: size.width,
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: size.height * 0.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          color: Color(0xff010210),
                          width: size.width * 0.9,
                          height: size.height * 0.1,
                          child: ScreenTextFields(
                            lableText: 'Search Contact',
                            label: 'Search Contact',
                            onchange: (value) => searchResult = value,
                            obscure: false,
                            textEditingController: _editingController,
                            textInputType: TextInputType.text,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ContactCard(
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(
                                          imageUrl: '32cae70e68ec97cb802d70868d8d249ddd85db64.png',
                                          name: 'Helena Brauer',
                                        ),
                                      ));
                                },
                                indexLetter: 'H',
                                size: size,
                                name: 'Helena Brauer',
                                image:
                                    '32cae70e68ec97cb802d70868d8d249ddd85db64.png',
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 14.0),
                                child: ContactCard(
                                  ontap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TransferPage(
                                            imageUrl: 'e5ab355e26e544a3ffcaa3ac0671ba30cb8fff88.png',
                                            name: 'Hironkana Hiroe',
                                          ),
                                        ));
                                  },
                                  size: size,
                                  name: 'Hironkana Hiroe',
                                  image:
                                      'e5ab355e26e544a3ffcaa3ac0671ba30cb8fff88.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ContactCard(
                                indexLetter: 'S',
                                size: size,
                                name: 'Sofietje Boksem',
                                image:
                                    '2dff9f1cca2e276e015e58ed520b78f7072ad0c6.png',
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(
                                          imageUrl: '2dff9f1cca2e276e015e58ed520b78f7072ad0c6.png',
                                          name: 'Sofietje Boksem',
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ContactCard(
                                indexLetter: 'T',
                                size: size,
                                name: 'Teng Hu',
                                image:
                                    'ef7a0c0253ddc1b336465d929de72e852f950d2c.png',
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(
                                          imageUrl: 'ef7a0c0253ddc1b336465d929de72e852f950d2c.png',
                                        name: 'Teng Hu',
                                        ),
                                      ),);
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ContactCard(
                                indexLetter: 'H',
                                size: size,
                                name: 'Teng Hu',
                                image:
                                    '6c1f127da6542be06ec8a84ef6cc7dc187cea9c5.png',
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(
                                          imageUrl: '6c1f127da6542be06ec8a84ef6cc7dc187cea9c5.png',
                                          name: 'Teng Hu',
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ContactCard(
                                indexLetter: 'X',
                                size: size,
                                name: 'Xu Xuefeng',
                                image:
                                    '3c63d811916d1279adbbde8cdc503d26510e02e1.png',
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(
                                          imageUrl: '3c63d811916d1279adbbde8cdc503d26510e02e1.png',
                                          name: 'Xu Xuefeng',
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    btnIcon: Icons.add,
                    color: Color(0xff4d61ee),
                    width: size.width * 0.75,
                    height: 52.0,
                    textLabel: 'New Contact',
                    onTap: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String indexLetter;
  final String name;
  final String image;
  final Function ontap;
  const ContactCard({
    Key key,
    @required this.size,
    this.indexLetter,
    @required this.name,
    @required this.image,
    this.ontap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(4.0),
        width: size.width * 0.9,
        alignment: Alignment.topLeft,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(bottom: 4.0),
              child: Text(
                indexLetter ?? '',
                style: TextStyle(color: Colors.tealAccent),
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/$image'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
