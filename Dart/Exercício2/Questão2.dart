import 'dart:io';

void main() {
  print("Digite o número para verificar se é par ou impar:");
  ehParOuImpar(int.parse(stdin.readLineSync()!));
}

void ehParOuImpar(numero) {
  if (numero % 2 == 0) {
    print("É par.");
  } else {
    print("É Impar.");
  }
}