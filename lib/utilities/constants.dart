import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldStyle =  TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.w900,
);

const kTextFieldInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  icon: Icon(
    Icons.location_city,
    size: 40,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 25,
    fontWeight: FontWeight.w900,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    borderSide: BorderSide.none,
  ),
);
