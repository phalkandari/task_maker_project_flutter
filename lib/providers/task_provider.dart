import 'package:flutter/material.dart';
import 'package:task_maker_project/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(text: "task1", isComplete: false),
    TaskModel(text: "task2", isComplete: false),
    TaskModel(text: "task3", isComplete: false),
  ];

  void addTask(String task) {
    TaskModel model = TaskModel(text: task, isComplete: false);

    tasks.add(model);

    notifyListeners();
  }

  void ChangeTaskStatus(TaskModel task) {
    task.isComplete = !task.isComplete;
    notifyListeners();
  }

  void deleteTask(TaskModel task) {
    tasks.remove(task);
    notifyListeners();
  }

  void deleteTaskByIndex(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
