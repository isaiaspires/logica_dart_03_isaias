import 'dart:io';

void main() {
  print('Informe um número');
  final input = (stdin.readLineSync() ?? '');
  final valor = int.parse(input);
  funcaoRecursiva(valor);
  print(soma);
}

int soma = 0;

int funcaoRecursiva(int valor) {
  soma += valor;
  valor--;
  if (valor >= 0) {
    funcaoRecursiva(valor);
  }
  return soma;
}
