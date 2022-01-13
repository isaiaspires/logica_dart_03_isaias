import 'dart:io';

void main() {
  print('Informe um número:');
  final input = stdin.readLineSync() ?? '';
  final valor = int.parse(input);
  int n1 = 0, n2 = 1, n3 = 0;
  int i = 2;
  //List<int> fib = [];
  //String result = '';
  print(n1);
  print(n2);
  cont(n1, n2, n3, valor, i);
}

void cont(int n1, n2, n3, valor, i) {
  for (i = 2; i <= 50; i++) {
    n3 = n1 + n2;
    //fib += [n3];
    //result += '$n3, ';
    if (n3 <= valor) {
      print('$n3');
    }

    n1 = n2;
    n2 = n3;
  }
}
