class Task {
  int id;
  String content;
  bool completed;
  DateTime createdAt;

  // Read-only non-final property
  int get launchYear => createdAt?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Task(this.id, this.completed, this.content, this.createdAt) {
    // Initialization code goes here.
  }
}

