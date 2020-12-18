import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
            ),
            child: Column(
              children: <Widget>[
                 Padding(
                  padding:  EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                ),
                 Padding(
                  padding:  EdgeInsets.only(left: 270),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding:  EdgeInsets.only(left: 25, right: 25),
            child: TextFormField(
              decoration:  InputDecoration(
                  hintText: 'User name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding:  EdgeInsets.only(left: 25, right: 25),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 220),
            child: Text(
              "Forget Password?",
              style:
              TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            minWidth: 300,
            height: 45,
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, '/db');
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an accont?",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "  Register",
              style:
              TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ]),
        ]),
      ),
    );
  }
}
