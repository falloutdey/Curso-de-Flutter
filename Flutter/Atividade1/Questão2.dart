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
              title: Text("Minhas receitas"),
              backgroundColor: Colors.lightBlue,
            ),
            body: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sobremesas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Torta de Maçã"),
                          Text("Mousse de Chocolate"),
                          Text(
                            "Pudim de Leite Condensado",
                          )
                        ],
                      )
                    ])
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pratos Principais",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Frango Assado com Batatas"),
                          Text("Espaguete à Bolonhesa"),
                          Text("Risoto de Cogumelos")
                        ],
                      )
                    ])
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Aperitivos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bolinhos de Queijo"),
                          Text("Bruschetta de Tomate e Manjericão"),
                          Text("Canapés de Salmão com Cream Cheese")
                        ],
                      )
                    ])
                  ],
                ),
              ],
            )));
  }
}
