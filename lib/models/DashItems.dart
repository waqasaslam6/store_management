class DashItems {
  String itemName;
  String itemImage;

  DashItems({this.itemName, this.itemImage});

  DashItems.fromJson(Map<String, dynamic> json) {
    itemName = json['itemName'];
    itemImage = json['itemImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemName'] = this.itemName;
    data['itemImage'] = this.itemImage;
    return data;
  }
}