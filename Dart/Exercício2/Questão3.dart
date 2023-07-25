import 'dart:io';

void main() {
  print("Digite o número:");
  int numero = int.parse(stdin.readLineSync()!);

  print("\nO número é maior que 10 e menor que 20:");
  print(comparacao1(numero));

  print("\nO número é igual a 0 ou igual a 20:");
  print(comparacao2(numero));

  print("\nO número é diferente de 100 ou igual a 200:");
  print(comparacao3(numero));
}

bool comparacao1(numero) {
  if (numero > 10 && numero < 20) {
    return true;
  }
  return false;
}

bool comparacao2(numero) {
  if (numero == 0 || numero == 50) {
    return true;
  }
  return false;
}

bool comparacao3(numero) {
  if (numero != 100 || numero == 200) {
    return true;
  }
  return false;
}