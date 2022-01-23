class Task{
  final String name;
  bool isChecked = false;

  Task({required this.name, required this.isChecked});

  void toggleDone(){
    isChecked = !isChecked;
  }
}