
import 'package:bloc/bloc.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit_state.dart';
import 'package:tourist_place_smart_ui/pages/welcome_page.dart';
import 'package:tourist_place_smart_ui/services/data_services.dart';

class Appcubits extends Cubit<CubitState>{
  Appcubits( { required this.data}) : super(InitialState()){

    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async{
    try{
        emit(LoadingState());
        places = await data.getInfo();
        emit(LoadedState(places));

    }catch(e){
      return ;
    }
  }

}