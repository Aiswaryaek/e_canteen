// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/textstyles.dart';

Widget submitButton(BuildContext context, String btnText,Function callbackAction) {
  return SizedBox(
      width: 187,
      height: 48,
      child: TextButton(
        child: Text(
         btnText,style: submitButtonText,
        ),
        onPressed: () {
               callbackAction();
        },
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          // primary: Colors.white,
          backgroundColor: greenButtonColor,
        ),
      ));
}
