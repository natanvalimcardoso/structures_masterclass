import 'package:agoravai/src/json_placeholder/datasources/remote_todos_datasource.dart';
import 'package:agoravai/src/json_placeholder/services/check_internet_service.dart';
import '../datasources/local_todo_datasource.dart';
import '../models/todo_model.dart';

class TodoRepository {
  final remoteDatasource = RemoteTodoDatasource();
  final localDatasource = LocaltodoDatasource();
  final checkInternetService = CheckInternetService();

  Future<List<TodoModel>> getTodos() async {
    late List list; // Usei o late pq tenho ctz que ele nao vai ser nulo mesmo que eu nao adicione

    if (await checkInternetService.isConnected()) {
      list = await remoteDatasource .getTodos(); //Serve para tipar e não para converter
      await localDatasource.saveTodos(list);
    } else {
      list = await localDatasource.getTodos();
    }
    final todos = list.map(TodoModel.fromJson).toList();
    return todos;
  }

  Future<void> setTodo(TodoModel model) async {
    await remoteDatasource.setTodos(model);
  }
}
