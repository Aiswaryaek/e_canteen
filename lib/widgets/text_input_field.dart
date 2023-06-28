// ignore_for_file: prefer_const_constructors

import 'package:e_canteen/styles/colors.dart';
import 'package:flutter/material.dart';

import '../styles/textstyles.dart';

TextField buildTextFormField(
    StateSetter setState,
    String _hintText,
    String _errorText,
    bool _isObscure,
    TextEditingController _controller) {
  String labelText = "";
  return TextField(
    controller: _controller,
    style: textFieldInputStyle,
    cursorColor: blackColor,
    obscureText: _isObscure,
    onChanged: (v) {
      setState(() {
      });
    },
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(0),
      isDense: true,
      errorText: _controller.text == '' ? _errorText : '',
      hintText: _hintText,
      hintStyle: labelTextStyle,
      fillColor: blackColor,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: buildTextFormColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: buildTextFormColor, width: 1),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: buildTextFormColor, width: 1),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: buildTextFormColor, width: 1),
      ),
    ),
  );
}
