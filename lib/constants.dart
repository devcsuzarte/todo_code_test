import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kTaskTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

const kDescriptionStyle = TextStyle(
  color: Color(0xFF787878)
);

const kWelcomeTitle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold
);

const kUserNameTitle = TextStyle(
  color: Colors.blueAccent,
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

const kUserNameNavBar = TextStyle(
  fontSize: 17,
);

const kSearchInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Pesquisar produto',
  floatingLabelBehavior: FloatingLabelBehavior.never,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  prefixIcon: Icon(CupertinoIcons.search),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.blueAccent,width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);
