import 'dart:io';

void main() {
  print("Digite o valor original do produto:");
  int valorOriginal = int.parse(stdin.readLineSync()!);

  var valorFinal = (valorOriginal) => valorOriginal - (valorOriginal * 0.20);

  print("\nValor com desconto de 20%: " + "R\$ " + (valorFinal(valorOriginal).toString()));
}