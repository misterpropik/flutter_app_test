import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_test/cubit/offices-cubit.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final OfficesCubit officesCubit = context.read<OfficesCubit>();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          child: Text('Загрузить'),
          onPressed: () {
            officesCubit.fetchOffices();
          },
          color: Colors.green,
        ),
        SizedBox(width: 8.0),
        RaisedButton(
          child: Text('Очистить'),
          onPressed: () {
            officesCubit.clearOffices();
          },
          color: Colors.red,
        ),
      ],
    );
  }
}