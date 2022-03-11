import 'package:agoravai/src/json_placeholder/stores/todo_stores.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
    final store = TodoStore();
    await store.getAllTodos();
     //print(store.todos[0].title); //*fUNCIONANDO
}