import 'dart:io';

void main() {
  final String nome = "Carlos Eduardo";
  final double peso = 56.7;

  Map<String, double> pesos = {'Carol': 58};

  print("Mapa Inicial: $pesos\n");

  pesos.putIfAbsent(nome, () => peso);

  print("Mapa Atual: $pesos\n");

  pesos.putIfAbsent("Maria", () => 66.3);
  pesos.putIfAbsent("João Lucas", () => 59.9);
  pesos.putIfAbsent("Cauã", () => 70);

  print("Mapa Atual: $pesos\n");

  final double? pesoNovo = pesos['Cauã'];

  pesos.remove('Carol');
  print("Mapa Atual: $pesos\n");

  print("Digite o seu nome:");
  if (pesos.containsKey(stdin.readLineSync()!)) {
    print("Nome encontrado.");
  } else {
    print("Nome não encontrado.");
  }

  print("\nMapa final: $pesos");
}
