void main() {
  Carro carro = Carro(
      marca: "Chevrolet",
      modelo: "Celta",
      anoFabricacao: "2015",
      precoBase: 150000,
      quilometragemAno: 25000,
      numeroPortas: 4);

  Moto moto = Moto(
      marca: "Yamaha",
      modelo: "Ténéré 700 World Rally",
      anoFabricacao: "2023",
      precoBase: 70000,
      numeroCilindradas: 250,
      partidaEletrica: true);

  carro.exibirInfo();
  carro.adesivo();
  print("Preço Inicial: " +
      carro.precoBase.toString() +
      "\nPreço Final: " +
      carro.calcularPreco().toString());


  moto.exibirInfo();
  moto.adesivo();
  print("Preço Inicial: " +
      moto.precoBase.toString() +
      "\nPreço Final: " +
      moto.calcularPreco().toString());
}

abstract class Veiculo {
  String marca;
  String modelo;
  String anoFabricacao;
  double precoBase;

  Veiculo({
    required this.marca,
    required this.modelo,
    required this.anoFabricacao,
    required this.precoBase,
  });

  void exibirInfo() {
    print("\nMarca do Veiculo: $marca");
    print("Modelo: $modelo");
    print("Ano de Fabricação: $anoFabricacao");
  }

  double calcularPreco();

  void adesivo();
}

class Carro extends Veiculo {
  int quilometragemAno;
  int numeroPortas;

  Carro({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required super.precoBase,
    required this.quilometragemAno,
    required this.numeroPortas,
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Quilometragem por Ano: $quilometragemAno");
    print("Número de Portas: $numeroPortas");
  }

  double calcularPreco() {
    double precoAdicional = (numeroPortas * 1000) + (quilometragemAno * 0.01);
    return precoBase + precoAdicional;
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
    required super.precoBase,
    required this.numeroCilindradas,
    required this.partidaEletrica,
  });

  @override
  void exibirInfo() {
    super.exibirInfo();
    print("Número de Cilindradas: $numeroCilindradas");
    print("Possui Partida Elétrica: $partidaEletrica");
  }

  double calcularPreco() {
    double precoAdicional = numeroCilindradas * 0.05;
    if (partidaEletrica) {
      precoAdicional += 500;
    }

    return precoBase + precoAdicional;
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