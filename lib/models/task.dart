class Task {
  int id;
  String content;
  bool completed;
  DateTime createdAt;

  // Constructor, with syntactic sugar for assignment to members.
  Task(this.id, this.completed, this.content, this.createdAt) {
    // Initialization code goes here.
    createdAt = DateTime.now();
    this.completed = false;
  }

}

