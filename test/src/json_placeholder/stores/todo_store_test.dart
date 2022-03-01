import 'package:flutter_pastas_masterclass/src/json_placeholder/stores/todo_store.dart';

void main() async {
  final store = TodoStore();
  await store.getAllTodos();
}