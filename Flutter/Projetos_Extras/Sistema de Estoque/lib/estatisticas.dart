import 'package:flutter/material.dart';

class Estatisticas extends StatelessWidget {
  const Estatisticas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaEstatisticas());
  }
}

class TelaEstatisticas extends StatefulWidget {
  const TelaEstatisticas({super.key});

  @override
  State<TelaEstatisticas> createState() => _TelaEstatisticasState();
}

class _TelaEstatisticasState extends State<TelaEstatisticas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estatísticas"),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),),
      ),
    );
  }
}
