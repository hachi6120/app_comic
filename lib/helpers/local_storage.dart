import 'package:hive_flutter/adapters.dart';

class LocalStorage{
  LocalStorage._internall();
  static final LocalStorage _shared = LocalStorage._internall();

  factory LocalStorage(){
    return _shared;
  }

  Box<dynamic>? hiveBox;

  static initLocalStorage() async{
    _shared.hiveBox = await Hive.openBox('AppTruyen');
  }

  static dynamic getValue(String key){
    return _shared.hiveBox?.get(key);
  }

  static setValue(String key, dynamic val){
    _shared.hiveBox?.put(key, val);
  }
}