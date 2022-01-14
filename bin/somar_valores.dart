void main() {
  myFunction();
}

void myFunction() {
  List<double> valores = [5.3, 4.25];
  print('Entrada: ${valores[0]} + ${valores[1]}');
  double result = valores[0] + valores[1];
  print('Resultado: $result');
}
