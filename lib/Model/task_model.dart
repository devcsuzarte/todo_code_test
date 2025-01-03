class TaskModel {

  TaskModel({
    required this.title,
    required this.note,
});

  String title;
  String note;
  bool isDone = false;
  bool showNote = false;

  void toggleIsDone() {
    isDone ? isDone = false : isDone = true;
  }

  void toggleShowDescription() {
    showNote ? showNote = false : showNote = true;
  }

}