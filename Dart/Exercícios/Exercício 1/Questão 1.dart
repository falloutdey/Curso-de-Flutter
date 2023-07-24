void main() {
  final String nome = "Carlos Eduardo";
  final int idade = 10;
  final bool ehNovato = false;
  String info = ehNovato ? "Sim" : "Não";
  final double peso = 56.7;
  final List<double> notas = [7.4, 9.5, 10, 6.2];
  final List<String> disciplinas = [
    "Matemática",
    "Português",
    "Ciências",
    "Geografia"
  ];
  final String? endereco = null;
  String enderecoNull = endereco ?? "Não informado";

  print("Nome: $nome");
  print("Idade: $idade");
  print("É novato? $info");
  print("Peso: $peso");
  print("Disciplinas: $disciplinas");
  print("Notas: $notas");
  print("Endereço: $enderecoNull");
}
