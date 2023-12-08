import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Hive_Crud/ToDo/todo.dart';

void main() async {
  await Hive.initFlutter;
  await Hive.openBox('todo_box');
  runApp(const MaterialApp(
    home: HiveTodo(),debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HiveTodo(),
    );
  }
}
