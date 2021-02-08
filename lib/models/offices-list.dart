class OfficesList {
  List<Office> offices;
  OfficesList({this.offices});

  factory OfficesList.fromJson(Map<String, dynamic> json) {
    var officesJson = json['offices'] as List;

    List<Office> officesList =
        officesJson.map((i) => Office.fromJson(i)).toList();

    return OfficesList(
      offices: officesList,
    );
  }
}

class Office {
  final String name;
  final String address;
  final String image;

  Office({this.name, this.address, this.image});

  factory Office.fromJson(Map<String, dynamic> json) {
    return Office(
        name: json['name'] as String,
        address: json['address'] as String,
        image: json['image'] as String);
  }
}
