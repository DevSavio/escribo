import 'dart:io';

void main() {
  print("Teste prático de Seleção Desenvolvedor Escribo (Desafio 01)");
  stdout.write("Digite um número inteiro: ");
  var result = stdin.readLineSync();
  stdout.write(sumAll(result));
}

// Crio a função nomeada sumAll
String sumAll(result) {
  result = int.tryParse(result);

  // Validando número positivo e maior que dois

  if (result != null) {
    if (result < 3) {
      return "Digite um número positivo maior do que 3";
    } else {
      int sum = 0;

      // Faço um loop até o valor informado
      for (int i = 0; i < result; i++) {
        // Verifico se o valor é dividendo por 3 ou 5
        if ((i % 3) == 0 || (i % 5) == 0) {
          // Caso o valor seja dividido acrescendo o valor atual do loop
          sum += i;
        }
      }

      return "A soma de todos os números múltiplos por 3 e 5 menores que " +
          result.toString() +
          " é " +
          sum.toString() +
          ".";
    }
  } else {
    return "Digite um número válido, sendo ele inteiro";
  }
}
