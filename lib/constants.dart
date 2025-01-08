import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kTaskTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

const kDescriptionStyle = TextStyle(
  color: Color(0xFF787878)
);

const kSubHeadingStyle = TextStyle(
    color: Color(0xFF787878),
    fontWeight: FontWeight.bold,
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

const kTextButtonLabel = TextStyle(
  color: Colors.blueAccent,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

const kDeleteAllButtonText = TextStyle(
  color: Colors.red,
  fontSize: 16,
);

const kUserNameNavBar = TextStyle(
  fontSize: 17,
);

const kCreateTaskTitle = TextStyle(
  color: Colors.blueAccent,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

const kSearchInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(00xF9F9FF),
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

const kCreateTaskInputDecoration = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.never,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: InputBorder.none
);