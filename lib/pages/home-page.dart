import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/myproject/flutter_app_test/lib/widgets/action_buttons.dart';
import 'package:flutter_app_test/pages/main-page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_test/services/offices-repository.dart';
import 'package:flutter_app_test/cubit/offices-cubit.dart';
class HomePage extends StatelessWidget {
  final officesRepository = OfficesRepository();
  @override
  Widget build(BuildContext context) {
      return BlocProvider<OfficesCubit>(
      create: (context) => OfficesCubit( officesRepository),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Список городов'),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ActionButtons(),
              Expanded(child: MainPage()),
            ],
          ),
        ),
    );
  }
}