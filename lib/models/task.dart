class Task {

  // atributos:
  int id;
  String title;
  bool completed;

  Task(this.id, this.title, {this.completed=false});

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(map["id"], map["title"], completed: map["completed"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "completed": completed
    };
  }
}