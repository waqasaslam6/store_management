import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_management/pages/Dashboard.dart';
class Users{
   String fullName;
   String phone;
   String email;
   String password;

  Users(this.fullName,this.phone,this.email,this.password);

   static login(_formKey,email,password) async {
     Get.to(Dashboard());
    if (true) {
      if (!_formKey.currentState.validate())
      {
        return print("Form is Invalid");
      }
      _formKey.currentState.save();
      print("Form is Valid");
      print(email.toString());
      print(password.toString());
    }
  }

   static register(_formKey,email,password) async {
     if (true) {
       if (!_formKey.currentState.validate())
       {
         return print("Form is Invalid");
       }
       _formKey.currentState.save();
       print("Form is Valid");
       print(email.toString());
       print(password.toString());
     }
   }



}