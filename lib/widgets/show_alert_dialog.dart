import 'package:flutter/material.dart';

import '../styles/textstyles.dart';

showAlertDialog(BuildContext context, String title, String subTitle,
    String buttonText, VoidCallback buttonPressed) {
  // set up the button
  Widget okButton = TextButton(
    child: Text(buttonText,style: loginHeadTextStyle,),
    onPressed: () {
      buttonPressed();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title,style: loginHeadTextStyle,),
    content: Text(subTitle,style: textFieldInputStyle,),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
