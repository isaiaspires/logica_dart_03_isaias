import 'dart:io';

void main() {
  print('Informe um número');
  final input = (stdin.readLineSync() ?? '');
  final valor = int.parse(input);
  int i = 0;

  calc(valor, i);
}

void calc(int valor, int i) {
  int soma = 0;
  for (i = 0; i <= valor; i++) {
    soma += i;
  }
  print('Todos os valores somados de 0 até $valor: $soma.');
}
