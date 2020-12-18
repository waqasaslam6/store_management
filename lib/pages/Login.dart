import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff313c50),
      body: Column(
        children: [
          Expanded(child: SizedBox(),),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 15),
            margin: EdgeInsets.only(top: 20,left: 30,right: 20),
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Login to continue",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                 TextFormField(
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.person),
                     hintText: "Email",
                     border: OutlineInputBorder()
                   ),
                 ),

                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                      border: OutlineInputBorder()
                  ),
                ),
                Text("Forgot password?"),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.red,
                        onPressed: (){},
                        child: Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(child: SizedBox(),),
          Text("New User ? Signup",
          style: TextStyle(
            color: Colors.white,
          ),),
          SizedBox(height: 15,),
        ],
      ),

    );
  }
}
