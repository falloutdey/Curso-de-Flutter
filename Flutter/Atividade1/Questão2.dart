import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, List<String>> dados = {
    'Sobremesas': [
      'Torta de Maçã',
      'Mousse de Chocolate',
      'Pudim de Leite Condensado',
    ],
    'Pratos principais': [
      'Frango Assado com Batatas',
      'Espaguete à Bolonhesa',
      'Risoto de Cogumelos',
    ],
    'Aperitivos': [
      'Bolinhos de Queijo',
      'Bruschetta de Tomate e Manjericão',
      'Canapés de Salmão com Cream Cheese',
    ]
  };

  final String? categoriaUsuario = null;
  final String busca = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Minhas Receitas"),
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: dados.entries.map((categoria) {
                if (categoriaUsuario == null ||
                    categoriaUsuario == categoria.key) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (busca.isEmpty)
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              categoria.key,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          )),
                        for (String prato in categoria.value)
                          if (prato.contains(busca) || busca.isEmpty)
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child:
                                  Text(prato, style: TextStyle(fontSize: 18)),
                            )
                      ]);
                } else {
                  return Container();
                }
              }).toList(),
            )));
  }
}