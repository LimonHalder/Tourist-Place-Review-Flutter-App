import 'package:equatable/equatable.dart';
import 'package:tourist_place_smart_ui/model/data_model.dart';

abstract class CubitState extends Equatable{
}

class InitialState extends CubitState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class WelcomeState extends CubitState{
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}

class LoadingState extends CubitState{
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}

class LoadedState extends CubitState{
  LoadedState(this.places);
  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object?> get props =>[places];
}