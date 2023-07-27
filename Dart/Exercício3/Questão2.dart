import 'dart:math';
import 'dart:io';

void main() {
  Random numeroAleatorio = Random();
  int numeroEscolhido = numeroAleatorio.nextInt(10) + 1;

  advinheNumero(numeroEscolhido);
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

void advinheNumero(int numeroEscolhido) {
  int tentativas = 5;
  print("Você tem 5 tentativas para acertar o número!\n");

  while (tentativas >= 0) {
    int numeroUsuario = pegarNumeroUsuario()!;

    if (numeroUsuario == numeroEscolhido) {
      print("\nParabéns!! Você acertou o número.");
      break;
    } else if (numeroUsuario > numeroEscolhido) {
      print("\nO número secreto é menor que $numeroUsuario");
    } else if (numeroUsuario < numeroEscolhido) {
      print("\nO número secreto é maior que $numeroUsuario");
    }

    tentativas--;
    print("Número de tentativas restantes: $tentativas\n");

    if (tentativas == 0) {
      print("Sinto muito! O número de tentativas acabou! :(");
      break;
    }
  }
}
