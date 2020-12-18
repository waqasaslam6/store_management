import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Login.dart';
import 'pages/Dashboard.dart';

void main()
{
  runApp(MaterialApp(
    title: "Store Management App",
    debugShowCheckedModeBanner: false,
    home: Login(),
    routes: {
      '/db':(context) => Dashboard(),
    },
  ));
}
