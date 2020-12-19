import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_management/models/DashItems.dart';
import 'package:store_management/pages/Login.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

 List<DashItems> _items=
 [
   DashItems(
     itemName: "Warehouse",
     itemImage: "images/warehouse.png"
   ),
   DashItems(
     itemName: "New Product",
     itemImage: "images/circle-cropped (1).png"
   ),
   DashItems(
       itemName: "Stock",
       itemImage: "images/circle-cropped (2).png"
   ),
   DashItems(
       itemName: "Summary",
       itemImage: "images/circle-cropped (3).png"
   )
   ,
   DashItems(
       itemName: "Order",
       itemImage: "images/add.png"
   )
   ,
   DashItems(
       itemName: "Expenses",
       itemImage: "images/circle-cropped (4).png"
   ),
   DashItems(
       itemName: "Setting",
       itemImage: "images/set.png"
   )

 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.4
          ),
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index)
          {
            return GestureDetector(
              onTap: ()
              {
                switch(index)
                {
                  case 0:
                    {
                      Navigator.pushNamed(context, '/login');
                    }
                    break;
                  case 1:
                    {
                      print(index);
                    }

                }

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image(
                    image: AssetImage(_items[index].itemImage),
                    width: 100,
                    height: 65,
                  ),
                  Text(
                    _items[index].itemName,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  )
                ],),
              ),
            );
          },
        ),
      ),
    );
  }
}
