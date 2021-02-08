import 'dart:convert';
import 'package:flutter_app_test/models/offices-list.dart';
import 'package:http/http.dart' as http;

class OfficesApi {
  Future<OfficesList> getOfficesList() async {
    const url = 'https://about.google/static/data/locations.json';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return OfficesList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
