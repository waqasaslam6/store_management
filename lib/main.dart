import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Login.dart';
import 'pages/Register.dart';
import 'pages/Dashboard.dart';

void main()
{
  runApp(MaterialApp(
    title: "Store App",
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
    routes: {
      '/register': (context)=>Register(),
      '/login': (context)=>Login(),
      '/db':(context)=>Dashboard()
    },
  ));
}
