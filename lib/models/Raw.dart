class Raw {
  String rawName;
  String unit;
  double unitPrice;

  Raw({this.rawName, this.unit, this.unitPrice});

  Raw.fromJson(Map<String, dynamic> json) {
    rawName = json['rawName'];
    unit = json['unit'];
    unitPrice = json['unitPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rawName'] = this.rawName;
    data['unit'] = this.unit;
    data['unitPrice'] = this.unitPrice;
    return data;
  }
}
