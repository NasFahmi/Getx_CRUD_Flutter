class Todos {
  String? id;
  String? todoName;
  bool? isComplete;
  String? createdAt;
  String? updatedAt;
  int? v;
  Todos(
      {required this.id,
      required this.todoName,
      required this.isComplete,
      required this.createdAt,
      required this.updatedAt,
      required this.v});
  factory Todos.fromJson(Map<String, dynamic> json) {
    return Todos(
        id: json['_id'],
        todoName: json['todoName'],
        isComplete: json['isComplete'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        v: json['__v']);
  }
}
