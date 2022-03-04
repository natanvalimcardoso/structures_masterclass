import 'package:flutter_pastas_masterclass/src/json_placeholder/datasources/remote_todos_datasource.dart';
import 'package:flutter_pastas_masterclass/src/json_placeholder/services/check_internet_service.dart';
import '../datasources/local_todo_datasource.dart';
import '../models/todo_model.dart';

class TodoRepository {
  final remoteDatasource = RemoteTodosDatasource();
  final localDatasource = LocalTodoDatasource();
  final checkinternetService = CheckInternetService();

  Future<List<TodoModel>> getTodos() async {
    late List list; // o Late é para que o valor seja definido apenas quando for usado e dai não preciso dizer que ele pode ser nulo
    if (await checkinternetService.isConnected()) {
      final list = await remoteDatasource.getTodos();
      await localDatasource.saveTodos(list);
    } else {
      list = await remoteDatasource.getTodos();
    }
    final todos = list.map(TodoModel.fromJson).toList();
    return todos;
  }

  Future<void> setTodo(TodoModel model) async {
    await remoteDatasource.setTodos(model);
  }
}
