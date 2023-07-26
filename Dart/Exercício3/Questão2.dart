import 'dart:math';
import 'dart:io';

void main() {
  int numeroUsuario = pegarNumeroUsuario()!;

  advinheNumero(numeroUsuario);
}

int? pegarNumeroUsuario() {
  print("Escolha um número de 1 a 10:");
  int? numeroUsuario = int.tryParse(stdin.readLineSync()!);

  if (numeroUsuario == null) {
    print("Valor Inválido.");
    pegarNumeroUsuario();
  }

  return numeroUsuario;
}

void advinheNumero(int numeroUsuario) {
  Random numeroAleatorio = Random();
  int numeroEscolhido = numeroAleatorio.nextInt(11 - 1) + 1;

  while (numeroUsuario != numeroEscolhido) {
    if (numeroUsuario > numeroEscolhido) {
      print("O número secreto é menor que $numeroUsuario");
    } else if (numeroUsuario < numeroEscolhido) {
      print("O número secreto é maior que $numeroUsuario");
    }
  }
  print("Parabéns!! Você acertou o número.");
}