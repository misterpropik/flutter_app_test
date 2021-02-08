import 'package:flutter/cupertino.dart';
import 'package:flutter_app_test/models/offices-list.dart';

abstract class OfficesState {}

class OfficesEmptyState extends OfficesState {}

class OfficesLoadingState extends OfficesState {}

class  OfficesLoadedState extends OfficesState {
  final OfficesList loadedOfficesList;
  OfficesLoadedState({@required this.loadedOfficesList}) : assert(loadedOfficesList != null);
}

class OfficesErrorState extends OfficesState {}