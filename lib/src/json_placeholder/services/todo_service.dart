import 'package:agoravai/src/json_placeholder/models/todo_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class TodoService{
  final dio = Dio();

 Future<List<TodoModel>> getTodos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    final list = response.data as List; //Serve para tipar e não para converter
    final todos = list.map(TodoModel.fromJson).toList(); // Mapa para converter os dados do json para o modelo 

    return todos;
  }
}