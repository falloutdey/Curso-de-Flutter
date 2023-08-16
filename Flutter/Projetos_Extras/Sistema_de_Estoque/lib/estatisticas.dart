import 'package:flutter/material.dart';
import 'main.dart';
import 'produto.dart';

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
  int quantidadeTotal = 0;
  double precoTotal = 0;
  Map<dynamic, dynamic> mapaProdutos = MainApp().getMapa();
  bool mudarIcon = false;

  @override
  void initState() {
    super.initState();
    calcularQuantidade();
    calcularPreco();
  }

  void calcularQuantidade() {
    for (Produto produto in mapaProdutos.values) {
      quantidadeTotal += produto.quantidade;
    }
  }

  void calcularPreco() {
    for (Produto produto in mapaProdutos.values) {
      precoTotal += produto.preco;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Estatísticas"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "Quantidade Total",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Text(
                  quantidadeTotal.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "Preço Total",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Text(
                  precoTotal.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ExpansionTile(
                leading: Icon(Icons.info),
                title: Text("Itens com Estoque Baixo"),
                trailing: Icon(mudarIcon? Icons.arrow_drop_down : Icons.arrow_drop_up)
              )
            ],
          ),
        ));
  }
}
