import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const TODOS = 'TODOS';

class LocaltodoDatasource{
  
  Future<List> getTodos() async {
   final shared = await SharedPreferences.getInstance();
   final jsonString = shared.getString(TODOS); // Serve para pegar o valor do json
   return jsonDecode(jsonString ?? '[]'); // Caso não tenha nada, retorna um array vazio
  }
  Future<void> saveTodos(dynamic json) async {
    final shared = await SharedPreferences.getInstance(); // Serve para pegar o valor do json
    await shared.setString(TODOS, jsonEncode(json)); // Serve para salvar o valor do json Localmente 
  }

}