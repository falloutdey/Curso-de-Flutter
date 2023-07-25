void main() {
  final String texto = "Minhas férias foram muito boas, mas seria mais melhor ter ido ver o filme do Pelé.";

  List<String> textoSeparado = texto.split(" ");
  int counterWords = textoSeparado.length;

  if (textoSeparado.contains("férias") || textoSeparado.contains("Férias")) {
    print("O texto contém a palavra 'férias'.");
  } else {
    print("O texto não contém a palavra 'férias'.");
  }

  String textoCorrigido = texto.replaceAll("mais melhor", "melhor");

  print("Número de palavras da redação: $counterWords");
  print("Texto corrigido: \n$textoCorrigido");
}
