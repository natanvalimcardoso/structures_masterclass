import 'package:dio/dio.dart';
import 'package:flutter_pastas_masterclass/src/json_placeholder/models/todo_model.dart';

class RemoteTodosDatasource {
  final dio = Dio();

  Future<dynamic> getTodos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos'); // Primeiro data source que vou ter aqui
    return response.data;
  }
  Future<dynamic> setTodos(TodoModel model) async {

    final data = {
      'id': model.id,
      'title': model.title,
    };

    final response = await dio.put('https://jsonplaceholder.typicode.com/todos', data: data); // Primeiro data source que vou ter aqui
    return response.data;
  }
}
