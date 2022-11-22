import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task_maker_project/pages/add_task_page.dart';
import 'package:task_maker_project/pages/list_page.dart';
import 'package:task_maker_project/providers/task_provider.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => ListPage(),
  ),
  GoRoute(
    path: "/add",
    builder: (context, state) => AddTaskPage(),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}
