class Task {
  int id;
  String title;
  String description;
  int priority;
  bool status;

  Task(this.title,this.description,this.priority, this.status);
  Task.withId({this.id, this.title,this.description,this.priority, this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['decription'] = description;
    map['priority'] = priority;
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      priority: map['priority'],
      status: map['status'],
    );
  }
}