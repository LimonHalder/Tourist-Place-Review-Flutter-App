import 'dart:convert';

class DataModel{
  String name;
  String detail;
  DataModel({
    required this.name,
    required this.detail,

});
  factory DataModel.fromJson(Map<String, dynamic> json){
    return DataModel(name: json['name'], detail: json['detail']);
  }


}