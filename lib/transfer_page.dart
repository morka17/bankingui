import 'package:exaltedvision/currencies_list.dart';
import 'package:exaltedvision/overview_page.dart';
import 'package:exaltedvision/resuable_inputfield.dart';
import 'package:exaltedvision/reusable_btn.dart';
import 'package:exaltedvision/security_check_page.dart';
import 'package:flutter/material.dart';

const Kdefaultdropdownstyle = TextStyle(
  color: Colors.white,
  fontSize: 40.0,
  fontWeight: FontWeight.w500,
);

class TransferPage extends StatefulWidget {
  static const String id = '/transfer_page';

  final String name;
  final String imageUrl;

  const TransferPage({Key key, @required this.name, this.imageUrl})
      : super(key: key);
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  String _selectedCurrency;
  String amount;
  String message;
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(8.0, 5, 8.0, 5),
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
                      'Transfer money to ${widget.name} ',
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
                height: 37.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Enter amount to transfer',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 33.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: DropDown(
                        selectedCurrency: _selectedCurrency,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCurrency = newValue;
                          });
                        },
                      ),
                    ),
                    Container(
                        height: 40.0,
                        width: size.width * 0.4,
                        alignment: Alignment.topRight,
                        child: ScreenTextFields(
                          label: '13900',
                          onchange: (value) => amount = value,
                          obscure: false,
                          textEditingController: editingController,
                          textInputType: TextInputType.number,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(4.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Optional',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: KinputDecoration.copyWith(
                        hintText: 'Message...',
                        labelText: 'Message',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      minLines: 4,
                      maxLines: null,
                      maxLength: 60,
                      onChanged: (value) => message = value,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    textColor: Colors.green,
                    width: size.width * 0.8,
                    textLabel: 'Next',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverViewPage(
                            name: widget.name,
                            imageurl: widget.imageUrl,
                            amount: amount,
                            message: message,
                            currency: _selectedCurrency,
                          ),
                        ),
                      );
                    },
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

class DropDown extends StatelessWidget {
  final Function onChanged;
  const DropDown({
    Key key,
    @required String selectedCurrency,
    this.onChanged,
  })  : _selectedCurrency = selectedCurrency,
        super(key: key);

  final String _selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DropdownButton(
          hint: Text(
            '\$',
            style: Kdefaultdropdownstyle.copyWith(color: Colors.black),
          ),
          value: _selectedCurrency,
          items: currencies.map((c) {
            return DropdownMenuItem(
              child: Text(
                c,
                style: Kdefaultdropdownstyle.copyWith(color: Colors.black),
              ),
              value: c,
            );
          }).toList(),
          onChanged: onChanged),
    );
  }
}
