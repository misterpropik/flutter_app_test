import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/cubit/offices-state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_test/cubit/offices-cubit.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfficesCubit, OfficesState>(
    builder: (context, state) {
      if (state is  OfficesEmptyState) {
        return Center(
          child: Text(
            'Пожалуйста загрузите данные!',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      }
      if (state is OfficesLoadingState) {
      return Center(child: CircularProgressIndicator());
      }
      if (state is OfficesLoadedState) {
            return ListView.builder(
                itemCount: state.loadedOfficesList.offices.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('${ state.loadedOfficesList.offices[index].name}'),
                      subtitle: Text('${ state.loadedOfficesList.offices[index].address}'),
                      leading: Image.network(
                          '${ state.loadedOfficesList.offices[index].image}'),
                      isThreeLine: true,
                    ),
                  );
                });
          }  if (state is OfficesErrorState) {
        return Center(
          child: Text(
            'Упс, ошибка!',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      }else
        return null;
        },
    );
  }
}
