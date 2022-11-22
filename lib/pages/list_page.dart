import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task_maker_project/providers/task_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
          actions: [
            IconButton(
                onPressed: () {
                  context.push("/add");
                },
                icon: Icon(Icons.add_box_outlined))
          ],
        ),
        body: ListView.builder(
          itemCount: context.watch<TaskProvider>().tasks.length,
          itemBuilder: (context, index) => Card(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Checkbox(
                    value:
                        context.watch<TaskProvider>().tasks[index].isComplete,
                    onChanged: (value) {
                      context.read<TaskProvider>().ChangeTaskStatus(
                          context.read<TaskProvider>().tasks[index]);
                    }),
                Text(context.watch<TaskProvider>().tasks[index].text),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          )),
        ));
  }
}
