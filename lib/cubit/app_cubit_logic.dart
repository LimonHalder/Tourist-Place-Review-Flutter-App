import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit.dart';
import 'package:tourist_place_smart_ui/pages/welcome_page.dart';

import '../pages/home_page.dart';
import 'app_cubit_state.dart';

class AppCubitsLogics extends StatefulWidget {
  const AppCubitsLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitsLogics> createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Appcubits,CubitState>(
       builder:(context, state){
         if (state is WelcomeState){
           return WelComePage();
         }
         if (state is LoadedState){
           return HomePage();
         }
         if (state is LoadingState){
           return Center(child: CircularProgressIndicator(),);
         }

         else{
           return Container();
         }
       }
      )
      );

  }
}
