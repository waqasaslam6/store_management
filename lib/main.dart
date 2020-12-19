import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:store_management/pages/Dashboard.dart';
import 'pages/Login.dart';
import 'pages/Register.dart';

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
      '/db': (context)=>Dashboard()
    },
  ));
}
