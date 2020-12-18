import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Login.dart';

void main()
{
  runApp(MaterialApp(
    title: "Store Management",
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
  ));
}
