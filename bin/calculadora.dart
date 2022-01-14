import 'dart:io';

void main() {
  print('Informe a operação desejada:');
  print('+ : Adição');
  print('- : Subtração');
  print('* : Multiplicação');
  print('/ : Divisão');

  String input = stdin.readLineSync() ?? '';
  double number1 = 5.30;
  double number2 = 4.25;

  if (input == '+') {
    adicao(number1, number2);
  } else if (input == '-') {
    subtracao(number1, number2);
  } else if (input == '*') {
    multiplicacao(number1, number2);
  } else if (input == '/') {
    divisao(number1, number2);
  }
  print(resultado(result));
}

double result = 0;

double adicao(number1, number2) {
  result = number1 + number2;
  return result;
}

double subtracao(number1, number2) {
  result = number1 - number2;

  return result;
}

double multiplicacao(number1, number2) {
  result = number1 * number2;
  return result;
}

double divisao(number1, number2) {
  result = (number1 / number2);
  return result;
}

double resultado(result) {
  return result;
}
