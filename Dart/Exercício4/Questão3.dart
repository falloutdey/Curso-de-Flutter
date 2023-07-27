void main() {
  Carro carro = Carro(
      marca: "Chevrolet",
      modelo: "Celta",
      anoFabricacao: "2015",
      quilometragemAno: 25000,
      numeroPortas: 4);

  Moto moto = Moto(
      marca: "Yamaha",
      modelo: "Ténéré 700 World Rally",
      anoFabricacao: "2023",
      numeroCilindradas: 250,
      partidaEletrica: true);

  carro.exibirInfo();
  carro.adesivo();
  moto.exibirInfo();
  moto.adesivo();
}

abstract class Veiculo {
  String? tipoVeiculo;
  String marca;
  String modelo;
  String anoFabricacao;

  Veiculo(
      {required this.marca,
      required this.modelo,
      required this.anoFabricacao,
      this.tipoVeiculo});

  void exibirInfo() {
    print("\nMarca do Veiculo: $marca");
    print("Modelo: $modelo");
    print("Ano de Fabricação: $anoFabricacao");
  }

  void adesivo();
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
    super.tipoVeiculo = "Carro",
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Quilometragem por Ano: $quilometragemAno");
    print("Número de Portas: $numeroPortas");
  }

  void adesivo() {
    if (quilometragemAno < 15000) {
      print("Classificação do Veículo: Seminovo");
    } else if (quilometragemAno > 15000 && quilometragemAno >= 20000) {
      print("Classificação do Veículo: Usado");
    } else {
      print("Classificação do Veículo: Antigo");
    }
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
    super.tipoVeiculo = "Moto",
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Número de Cilindradas: $numeroCilindradas");
    print("Possui Partida Elétrica: $partidaEletrica");
  }

  void adesivo() {
    if (numeroCilindradas < 125) {
      print("Classificação do Veículo: Leve");
    } else if (numeroCilindradas > 125 && numeroCilindradas <= 500) {
      print("Classificação do Veículo: Normal");
    } else {
      print("Classificação do Veículo: Esportiva");
    }
  }
}
