import 'dart:io';

void main() {
  print("Digite um número de 0 a 7:");
  int dia = int.parse(stdin.readLineSync()!);

  if (dia < 0 || dia > 7) {
    print("Número Inválido. Tente novamente.");
    main();
  }

  switch (dia) {
    case 1:
      print("Hoje é Domingo.");
      break;
    case 2:
      print("Hoje é Segunda-Feira.");
      break;
    case 3:
      print("Hoje é Terça-Feira.");
      break;
    case 4:
      print("Hoje é Quarta-Feira.");
      break;
    case 5:
      print("Hoje é Quinta-Feira.");
      break;
    case 6:
      print("Hoje é Sexta-Feira.");
      break;
    case 7:
      print("Hoje é Sábado.");
      break;
  }
}
