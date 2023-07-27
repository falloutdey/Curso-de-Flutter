import 'dart:io';

void main() {
  Carro carro = Carro(marca: "Chevrolet", modelo: "Celta", anoFabricacao: "2015", quilometragemAno: 100, numeroPortas: 4);
  
  Moto moto = Moto(marca: "Yamaha", modelo: "Ténéré 700 World Rally", anoFabricacao: "2023", numeroCilindradas: 4, partidaEletrica: true);

  carro.exibirInfo();
  moto.exibirInfo();
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
    print("\nMarca do Veiculo: $marca");
    print("Modelo: $modelo");
    print("Ano de Fabricação: $anoFabricacao");
  }
}

class Carro extends Veiculo {
  int quilometragemAno;
  int numeroPortas;

  Carro({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.quilometragemAno,
    required this.numeroPortas,
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Quilometragem por Ano: $quilometragemAno");
    print("Número de Portas: $numeroPortas");
  }
}

class Moto extends Veiculo {
  int numeroCilindradas;
  bool partidaEletrica;

  Moto({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.numeroCilindradas,
    required this.partidaEletrica,
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Número de Cilindradas: $numeroCilindradas");
    print("Possui Partida Elétrica: $partidaEletrica");
  }
}
