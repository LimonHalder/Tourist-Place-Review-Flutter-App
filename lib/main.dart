import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit_logic.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit_state.dart';
import 'package:tourist_place_smart_ui/pages/detail_page.dart';
import 'package:tourist_place_smart_ui/pages/nav_page/main_page.dart';
import 'package:tourist_place_smart_ui/pages/welcome_page.dart';
import 'package:tourist_place_smart_ui/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:BlocProvider<Appcubits>(
        create:(context)=> Appcubits(data:DataServices()),
        child: AppCubitsLogics(

        ),
      ),
    );
  }
}

