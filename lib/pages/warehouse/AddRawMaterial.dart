import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddRawMaterial extends StatefulWidget {
  @override
  _AddRawMaterialState createState() => _AddRawMaterialState();
}

class _AddRawMaterialState extends State<AddRawMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Raw Products'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15,right: 15,bottom: 20,top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/sushi.png',
              height: 150,
              width: 150,),
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
                decoration: InputDecoration(
                    labelText: 'Raw Material',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    )
                ),

              ),
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
                decoration: InputDecoration(
                    labelText: 'Unit',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    )
                ),

              ),
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
                decoration: InputDecoration(
                    labelText: 'Unit Price',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    )
                ),

              ),
              SizedBox(height: 15,),
              MaterialButton(
                  minWidth: MediaQuery.of(context).size.width / 2,
                  height: 45,
                  color: Theme.of(context).primaryColor,
                  onPressed: (){

                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  shape: StadiumBorder()
              )
            ],
          ),
        ),
      ),
    );
  }
}
