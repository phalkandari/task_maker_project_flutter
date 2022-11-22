import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_maker_project/providers/task_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: ListView.builder(
          itemCount: context.watch<TaskProvider>().tasks.length,
          itemBuilder: (context, index) =>
              Text(context.watch<TaskProvider>().tasks[index]),
        ));
  }
}
