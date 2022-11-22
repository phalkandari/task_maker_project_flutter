import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<String> tasks = [
    "Define provider class",
    "Provide/Configure the provider",
    "Watch/Read provider variables/functions",
  ];

  void addTask(String task) {
    tasks.add(task);

    notifyListeners();
  }
}
