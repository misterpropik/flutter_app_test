import 'package:flutter_app_test/services/offices-api.dart';
import 'package:flutter_app_test/models/offices-list.dart';

class OfficesRepository {
  OfficesApi _officesApi = OfficesApi();
  Future<OfficesList> getAllOffices() => _officesApi.getOfficesList();
}
