void main() {
  List<double> notas = [7.4, 9.5, 10, 6.2];

  notas.add(10);
  print("Notas após adicionar a nota 10: $notas\n");

  notas.remove(notas.elementAt(2));
  print("Notas após deletar a terceira avaliação: $notas\n");

  List<double> notas1semestre = notas.sublist(0, 2);
  print("Notas do primeiro semestre: $notas1semestre\n");

  for (int i = 0; i < notas.length; i++) {
    if (notas[i] == 11) {
      notas.remove(notas[i]);
      print("Notas corrigidas (sem a nota 11): $notas\n");
    }
  }

  notas.sort();
  print("Notas organizadas de forma crescente: $notas");
}
