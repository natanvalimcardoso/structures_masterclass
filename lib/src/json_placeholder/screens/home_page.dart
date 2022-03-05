import 'package:flutter/material.dart';
import 'package:flutter_pastas_masterclass/src/json_placeholder/stores/todo_store.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoStore = TodoStore();

  @override
  void initState() {
    super.initState();
    todoStore.addListener(() {
      setState(() {
      });
      todoStore.getAllTodos();
     });
  }

  @override
  Widget build(BuildContext context) {
    final todos = todoStore.todos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (_, index) {
          final todo = todos[index];
          return CheckboxListTile(
            title: Text(todo.title),
            value: todo.isChecked,
            onChanged: (v) {},
          );
        },
      ),
    );
  }
}
