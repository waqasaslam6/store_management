import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row( children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 30, bottom: 8),
                    child: Image(
                      image: AssetImage('images/warehouse.png'),
                      width: 200,
                      height: 50,
                    )
                  ),
                  Text(
                    "Warehouse",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20

                    ),
                  )
                ],),
              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30, bottom: 8),
                      child: Image(
                        image: AssetImage('images/circle-cropped (1).png'),
                        width: 200,
                        height: 55,
                      )
                  ),
                  Text(
                    "New Product",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  )
                ],),
              ),
            ),
          ],
          ),
          Row( children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30, bottom: 8),
                      child: Image(
                        image: AssetImage('images/circle-cropped (2).png'),
                        width: 200,
                        height: 55,
                      )
                  ),
                  Text(
                    "Stock",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20

                    ),
                  )
                ],),
              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30, bottom: 8),
                      child: Image(
                        image: AssetImage('images/circle-cropped (3).png'),
                        width: 200,
                        height: 55,
                      )
                  ),
                  Text(
                    "Summary",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20

                    ),
                  )
                ],),
              ),
            ),
          ],
          ),
          Row( children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30, bottom: 8),
                      child: Image(
                        image: AssetImage('images/add.png'),
                        width: 200,
                        height: 50,
                      )
                  ),
                  Text(
                    "Order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20

                    ),
                  )
                ],),
              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width/2.2,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30, bottom: 8),
                      child: Image(
                        image: AssetImage('images/circle-cropped (4).png'),
                        width: 200,
                        height: 50,
                      )
                  ),
                  Text(
                    "Expenses",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20

                    ),
                  )
                ],),
              ),
            ),
          ],
          ),
          Row( children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 8,),
              child: Container(
                height: MediaQuery.of(context).size.height/6.3,
                width: MediaQuery.of(context).size.width/1.06,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 15,),
                    child: Image(
                      image: AssetImage('images/set.png'),
                      width: 200,
                      height: 63,
                    )
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  )
                ],),
              ),
            ),
          ],
          ),
        ]
        ),
      ),
    );
  }
}
