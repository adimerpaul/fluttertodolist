import 'package:flutter/material.dart';
import 'package:todo_list/view/ListaPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const ListaPage(),
    );
  }
}
