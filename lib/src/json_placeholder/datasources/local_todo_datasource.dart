import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const TODOS = 'TODOS';

class LocalTodoDatasource{
  Future<List> getTodos() async { 
    final shared = await SharedPreferences.getInstance();
    final jsonString = shared.getString(TODOS);

    return jsonDecode(jsonString ?? '[]');
  }

  Future<void> saveTodos(dynamic json) async {// Salva os dados no SharedPreferences de forma local 
    final shared = await SharedPreferences.getInstance();
    await shared.setString(TODOS, jsonEncode(json));
  }
}