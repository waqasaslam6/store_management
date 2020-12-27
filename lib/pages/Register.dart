import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_management/models/Users.dart';
import 'package:store_management/pages/Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController fullName = new TextEditingController();
  TextEditingController phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 4),
              ),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/user.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.78,
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    validator: (val)
                    {
                      if(val.isEmpty)
                        return "Name is required";
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    validator: (val)
                    {
                      if(val.isEmpty)
                        return "Phone is required";
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    validator: (val)
                    {
                      if(val.isEmpty)
                        return "Email is required";
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    validator: (val)
                    {
                      if(val.isEmpty)
                        return "Password is required";
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  MaterialButton(
                      minWidth: MediaQuery.of(context).size.width / 2,
                      height: 45,
                      color: Theme.of(context).primaryColor,
                      onPressed: (){
                        String userEmail = email.text;
                        String userPassword = password.text;
                        Users.login(_formKey,userEmail,userPassword);
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      shape: StadiumBorder()
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already registered?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        FlatButton(
                          onPressed: ()
                          {
                            Get.to(Login());
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
