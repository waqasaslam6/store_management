
import 'package:get/get.dart';
import 'package:store_management/models/Raw.dart';

class RawController extends GetxController{

  var rawList = List<Raw>().obs;

  List<String> rawNames = List<String>();


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchRaw();
  }

  void fetchRaw() {
    var serverResponse=[
      Raw(
        rawName: "Mango",
        unit: "Kg",
        unitPrice: 20.0
      ),
      Raw(
          rawName: "Apple",
          unit: "Kg",
          unitPrice: 20.0
      ),
      Raw(
          rawName: "Banana",
          unit: "Dozen",
          unitPrice: 20.0
      ),
      Raw(
          rawName: "Milk",
          unit: "Ltr",
          unitPrice: 20.0
      ),

    ];


    rawList.assignAll(serverResponse);

    rawNames = [
      "1",
      "2",
      "3"
    ];


  }



}