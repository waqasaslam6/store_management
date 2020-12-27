import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_management/pages/Dashboard.dart';
import 'package:store_management/pages/warehouse/AddRawMaterial.dart';
import 'package:store_management/pages/warehouse/Warehouse.dart';
import 'pages/Login.dart';
import 'pages/Register.dart';
import 'pages/Dashboard.dart';

void main()
{
  runApp(GetMaterialApp(
    title: "Store App",
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
//    routes: {
//      '/register': (context)=>Register(),
//      '/login': (context)=>Login(),
//      '/db':(context)=>Dashboard(),
//      '/warehouse':(context)=>Warehouse(),
//      '/addraw':(context)=>AddRawMaterial(),
//    },
  ));
}
