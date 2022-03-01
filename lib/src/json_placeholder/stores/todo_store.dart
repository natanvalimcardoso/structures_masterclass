import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../models/todo_model.dart';

class TodoStore extends ChangeNotifier{
  final List<TodoModel> todos = [];

  Future<List<TodoModel>> getAllTodos() async{
    final dio = Dio();
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    print(response.data);
    return [];
  }
}