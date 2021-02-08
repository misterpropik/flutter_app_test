import 'package:flutter_app_test/models/offices-list.dart';
import 'package:flutter_app_test/services/offices-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_test/cubit/offices-state.dart';

class OfficesCubit extends Cubit<OfficesState> {
  final OfficesRepository officesRepository;

  OfficesCubit(this.officesRepository) : super(OfficesEmptyState());

  Future<void> fetchOffices() async {
    try {
      emit(OfficesLoadingState());
      final OfficesList _loadedOfficesList = await officesRepository.getAllOffices();
      emit(OfficesLoadedState(loadedOfficesList: _loadedOfficesList));
    } catch (_) {
      emit(OfficesErrorState());
    }
  }

  Future<void> clearOffices() async {
    emit(OfficesEmptyState());
  }
}