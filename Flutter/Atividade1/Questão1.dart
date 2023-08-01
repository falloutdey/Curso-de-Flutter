import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Minhas Receitas"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Sem receitas ainda")),
    ));
  }
}
