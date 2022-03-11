import 'package:flutter/material.dart';
import '../models/todo_model.dart';
import '../services/todo_service.dart';

class TodoStore extends ChangeNotifier {
  final _todoService = TodoService();

  List<TodoModel> _todos = [];
  List<TodoModel> get todos => List<TodoModel>.unmodifiable(_todos); // Serve para não alterar o array original do _todos

  Future<void> getAllTodos() async {
    _todos = await _todoService.getTodos();
    notifyListeners();
  }
}
