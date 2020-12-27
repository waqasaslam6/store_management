import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:get/get.dart';
import 'package:store_management/controllers/RawController.dart';
import 'package:store_management/pages/warehouse/AddRawMaterial.dart';

class Warehouse extends StatefulWidget {
  @override
  _WarehouseState createState() => _WarehouseState();
}

class _WarehouseState extends State<Warehouse> {
  final rawController = Get.put(RawController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raw Material Stock'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15,right: 15,bottom: 20,top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('images/stock (1).png',
              height: 150,
              width: 150,),
              SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: DropdownSearch<String>(
                      mode: Mode.BOTTOM_SHEET,
                      maxHeight: MediaQuery.of(context).size.height/2,
                      items: rawController.rawNames,
                      label: "Select Raw Material",
                      onChanged: print,
                      selectedItem: "Raw1",
                      showSearchBox: true,
                      searchBoxDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                        labelText: "Search Raw Material",
                      ),
                      popupTitle: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Raw Material',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      popupShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                              border: Border.all(color: Colors.grey, width: 1,)),
                          child: IconButton(
                              icon: Icon(Icons.add),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: (){
                           Get.to(AddRawMaterial());
                          },)))
                ],
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
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
                decoration: InputDecoration(
                  labelText: 'Quantity',
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
                    labelText: 'Total',
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
