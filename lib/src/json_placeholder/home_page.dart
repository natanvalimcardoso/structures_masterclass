import 'package:agoravai/src/json_placeholder/stores/todo_stores.dart';
import 'package:flutter/material.dart';

final todoStore = TodoStore();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todoStore.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final todos = todoStore.todos;

    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (_, index) {
            final todo = todos[index];
            return CheckboxListTile(
                title: Text(todo.title),
                value: todo.isChecked,
                onChanged: (v) {});
          }),
    );
  }
}
