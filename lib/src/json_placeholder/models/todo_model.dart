class TodoModel {
  final int id;
  final String title;
  final bool isChecked;

  TodoModel({required this.id, required this.title, required this.isChecked});

  factory TodoModel.fromJson(dynamic json) {
    return TodoModel(
      id: json['id'],
      title: json['title'],
      isChecked: json['completed'],
    );
  }
}
