import 'package:dio/dio.dart';
import 'package:flutter_pastas_masterclass/src/json_placeholder/models/todo_model.dart';

class TodoService {
  final dio = Dio();
  
  Future<List<TodoModel>> getTodos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    final list = response.data as List;
    final todos = list.map(TodoModel.fromJson).toList();
    return todos;
  }
}
