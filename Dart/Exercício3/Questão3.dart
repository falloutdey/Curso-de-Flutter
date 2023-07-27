import 'dart:io';

void main() {
  print("Digite o preço máximo de um produto:");
  int precoMax = int.parse(stdin.readLineSync()!);
  List<int> precos = [];
  int sentinel = 0;

  while (sentinel <= precoMax) {
    if (sentinel % 2 == 0) {
      precos.add(sentinel);
    }

    sentinel++;
  }

  print("A lista de preços disponíveis dos produtos é: $precos");
}
