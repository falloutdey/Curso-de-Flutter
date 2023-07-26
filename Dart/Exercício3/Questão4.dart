import 'dart:io';

void main() {
  List<double> notas = [];

  print("Quantas notas você deseja adicionar?");
  int quantidadeNotas = int.parse(stdin.readLineSync()!);

  print("\nDigite as notas:");
  for (int i = 0; i < quantidadeNotas; i++) {
    notas.add(double.parse(stdin.readLineSync()!));
  }
  print("\nAs notas são: $notas");

  mediaNotas(notas);
}

void mediaNotas(List notas) {
  double soma = 0;
  final int tamanhoLista = notas.length;

  for (int i = 0; i < tamanhoLista; i++) {
    soma += notas[i];
  }

  double mediaFinal = soma / tamanhoLista;

  print("\nA média das notas é igual a: $mediaFinal");
}