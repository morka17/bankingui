import 'package:flutter/material.dart';

const KinputDecoration = InputDecoration(
    hintText: "First Name",
    focusColor: Colors.green,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlue, width: 1.0),
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2.0)));

class ScreenTextFields extends StatefulWidget {
  ScreenTextFields({
    @required this.label,
    @required this.onchange,
    @required this.obscure,
    @required this.textEditingController,
    @required this.textInputType, this.lableText,
  });

  final String label;
  final Function onchange;
  final bool obscure;
  final TextInputType textInputType;
  final String lableText;
  final TextEditingController textEditingController;
  @override
  _ScreenTextFieldsState createState() => _ScreenTextFieldsState();
}

class _ScreenTextFieldsState extends State<ScreenTextFields>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween(begin: 300.0, end: 300.0).animate(_controller);

    //    Listener
    _controller.addListener(() {
      setState(() {});
      print(_controller.value);
    });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      obscureText: widget.obscure,
      focusNode: _focusNode,
      onChanged: widget.onchange,
      decoration: KinputDecoration.copyWith(
        hintText: widget.label,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        labelText: widget.lableText,
        labelStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15.0),
        alignLabelWithHint: true,
      ),
    );
  }
}
