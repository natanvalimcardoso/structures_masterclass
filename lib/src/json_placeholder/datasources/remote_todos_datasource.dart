import 'package:agoravai/src/json_placeholder/models/todo_model.dart';
import 'package:dio/dio.dart';

class RemoteTodoDatasource {
  final dio = Dio();

  Future<dynamic> getTodos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos'); // O get é o método que faz a requisição
    return response.data; //Serve para tipar e não para converter
  }

  Future<dynamic> setTodos(TodoModel model) async {
    final data = {
      "id": model.id,
      "title": model.title,
    };
    final response = await dio.put('https://jsonplaceholder.typicode.com/todos',data: data ); // O put é para atualizar
    return response.data; //Serve para tipar e não para converter
  }
}
