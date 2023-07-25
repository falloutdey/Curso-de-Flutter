import 'dart:io';

void main() {
  print("Digite o primeiro número:");
  int numero1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  int numero2 = int.parse(stdin.readLineSync()!);

  soma(numero1, numero2);
  subtracao(numero1, numero2);
  multiplicacao(numero1, numero2);
  divisao(numero1, numero2);
  resto(numero1, numero2);
}

void soma(numero1, numero2) {
  int soma = numero1 + numero2;
  print("O resultado da soma é igual a: $soma");
}

void subtracao(numero1, numero2) {
  int sub = numero2 - numero1;
  print("O resultado da subtração é igual a: $sub");
}

void multiplicacao(numero1, numero2) {
  int multi = numero1 * numero2;
  print("O resultado da multiplicação é igual a: $multi");
}

void divisao(numero1, numero2) {
  double div = numero1 / numero2;
  print("O resultado da divisão é igual a: $div");
}

void resto(numero1, numero2) {
  int rest = numero1 % numero2;
  print("O resultado do resto da divisão é igual a: $rest");
}