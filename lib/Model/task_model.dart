class TaskModel {

  TaskModel({
    required this.title,
    required this.note,
    this.id,
    this.isDone = 0,
});

  int? id;
  String? title;
  String? note;
  int? isDone;
  bool showNote = false;

  void toggleIsDone() {
    isDone == 1 ? isDone = 0 : isDone == 1;
  }

  void toggleShowDescription() {
    showNote ? showNote = false : showNote = true;
  }

}