// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/textstyles.dart';

Widget orderButton(
    BuildContext context, String btnText, Function callbackAction) {
  return SizedBox(
      width: 129,
      height: 38,
      child: TextButton(
        child: Transform.translate(
          offset: Offset(0, -5),
          child: Text(
            btnText,
            style: orderButtonText,
          ),
        ),
        onPressed: () {
          callbackAction();
        },
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          // primary: Colors.white,
          backgroundColor: whiteColor,
        ),
      ));
}
