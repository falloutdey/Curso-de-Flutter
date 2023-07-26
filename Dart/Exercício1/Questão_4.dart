void main() {
  String pesoBalanca = '56.7';

  double pesoAtual = double.parse(pesoBalanca);

  pesoAtual = pesoAtual.abs();
  int pesoFinal = pesoAtual.round();

  print("Peso Atual: $pesoFinal Kg");
}
