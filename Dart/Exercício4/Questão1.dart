import 'dart:io';

void main() {
  print("Digite a marca do veículo:");
  String marca = stdin.readLineSync()!;
  print("Digite o modelo do veículo:");
  String modelo = stdin.readLineSync()!;
  print("Digite o ano de fabricação do veículo:");
  String anoFabricacao = stdin.readLineSync()!;
  
  Veiculo veiculo = Veiculo(marca: marca, modelo: modelo, anoFabricacao: anoFabricacao);

 veiculo.exibirInfo();
}

class Veiculo {
  String marca;
  String modelo;
  String anoFabricacao;

  Veiculo({
    required this.marca,
    required this.modelo,
    required this.anoFabricacao,
  });

  void exibirInfo() {
    print("Marca do Veículo: $marca");
    print("Modelo: $modelo");
    print("Ano de Fabricação: $anoFabricacao");
  }
}
