import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  register() async
  {
    if (true) {
      if (!_formKey.currentState.validate())
      {
        return print("Form is Invalid");
      }
      _formKey.currentState.save();
      print("Form is Valid");

    }

  }

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
                      onPressed: register,
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
                            Navigator.pushNamed(context, '/login');
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