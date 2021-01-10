import 'package:flutter/material.dart';

const pad = EdgeInsets.only(left: 20.0, top: 20.0);
Container getButton(
    {double height,
    double width,
    Color textColor,
    Color buttonColor,
    String text}) {
  return Container(
    height: height * 0.07,
    width: width != null ? width * 0.5 : null,
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: height * 0.025, color: textColor),
    ),
  );
}
