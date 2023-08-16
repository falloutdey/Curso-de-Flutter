import 'package:flutter/material.dart';
import 'produto.dart';
import 'estatisticas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Map getMapa() {
    return _MyAppState().produtos;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var produtos = Map<String, Produto>();

  void adicionarProduto(Produto produto) {
    setState(() {
      produtos[produto.nomeProduto] = produto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text("Meus Produtos"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaEstatisticas(),
                  ),
                );
              },
              icon: Icon(Icons.analytics),
            ),
          ),
        ],
      ),
      body: produtos.isNotEmpty
          ? ListView.builder(
              itemCount: produtos.length,
              itemBuilder: (BuildContext context, int index) {
                String nomeProduto = produtos.keys.toList()[index];
                Produto produto = produtos[nomeProduto]!;

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text(
                          produto.nomeProduto + " (R\$ ${produto.preco})",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: produto.descricao != null
                            ? Text(produto.descricao!,
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontWeight: FontWeight.w700))
                            : Text(""),
                        trailing: Text("x${produto.quantidade}"),
                      ),
                    ),
                    produtos.length > 1
                        ? Divider(
                            height: 0,
                            color: const Color.fromARGB(255, 196, 195, 195))
                        : Text(""),
                  ],
                );
              },
            )
          : Center(child: Text("Não há produtos adicionados.")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final novoProduto = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TelaCadastro(),
            ),
          );

          if (novoProduto != null) {
            adicionarProduto(novoProduto);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaCadastro());
  }
}

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController Nome = TextEditingController();
  TextEditingController Descricao = TextEditingController();
  TextEditingController Preco = TextEditingController();
  TextEditingController Quantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Produto"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: Nome,
                decoration: InputDecoration(
                  labelText: 'Nome do Produto',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              child: TextField(
                controller: Descricao,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Descrição do Produto',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: Preco,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Preço',
                  hintText: 'R\$ 0,00',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: Quantidade,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Quantidade',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30, left: 25, right: 25),
        child: TextButton(
          onPressed: () {
            Produto novoProduto = Produto(
              nomeProduto: Nome.text,
              descricao: Descricao.text.isNotEmpty ? Descricao.text : null,
              preco: double.parse(Preco.text.replaceAll(',', '.')),
              quantidade: int.parse(Quantidade.text),
            );

            Navigator.pop(context, novoProduto);
          },
          child: Text(
            "Salvar",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          style: ButtonStyle(
            fixedSize: MaterialStatePropertyAll<Size>(Size.fromHeight(40)),
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          ),
        ),
      ),
    );
  }
}
