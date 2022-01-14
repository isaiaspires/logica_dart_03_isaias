import 'dart:io';

void main() {
  int dateYear = DateTime.now().year;
  int dateMonth = DateTime.now().month;
  int dateDay = DateTime.now().day;
  print('Dia Atual: $dateDay/$dateMonth/$dateYear');
  testes(dateYear, dateMonth, dateDay);
}

String readFromKeyBoard(String line) {
  if (line.isEmpty) exit(0);
  return line.toString();
}

void testes(int dateYear, dateMonth, dateDay) {
  print("Informe seu nome:");
  String inputs = readFromKeyBoard(stdin.readLineSync() ?? '');
  String name = inputs.toUpperCase();

  print("Informe o dia do seu nascimento:");
  var inputday = readFromKeyBoard(stdin.readLineSync() ?? '');
  print("Informe o mês do seu nascimento:");
  var inputmonth = readFromKeyBoard(stdin.readLineSync() ?? '');
  print("Informe o ano do seu nascimento:");
  var inputyear = readFromKeyBoard(stdin.readLineSync() ?? '');
  int year = int.parse(inputyear);
  var deltaYear = dateYear - year;
  int month = int.parse(inputmonth);
  var deltaMonth = month - dateMonth;
  int day = int.parse(inputday);
  var deltaDay = day - dateDay;

  if (deltaYear > 18) {
    print('$name pode Dirigir');
  } else if (deltaYear < 18) {
    print('$name não pode dirigir');
  } else if (deltaYear == 18) {
    if (deltaMonth > 0) {
      print('$name não pode dirigir');
    } else if (deltaMonth < 0) {
      print('$name pode dirigir');
    } else if (deltaMonth == 0) {
      (deltaDay > 0)
          ? print('$name não pode dirigir')
          : print('$name pode dirigir');
    }
  }
}
