import 'dart:io';

void main() {
  var dateYear = DateTime.now().year;
  var dateMonth = DateTime.now().month;
  var dateDay = DateTime.now().day;
  print('Dia Atual: $dateDay/$dateMonth/$dateYear');

  print("Informe seu nome:");
  String inputs = readFromKeyBoard(stdin.readLineSync() ?? '');
  String name = inputs.toUpperCase();

  print("Informe o ano do seu nascimento:");
  var inputyear = readFromKeyBoard(stdin.readLineSync() ?? '');
  var year = int.parse(inputyear);
  var deltaYear = dateYear - year;

  if (deltaYear > 18) {
    print('$name pode Dirigir');
  } else if (deltaYear < 18) {
    print('$name não pode dirigir');
  } else if (deltaYear == 18) {
    print("Informe o mês do seu nascimento:");
    var inputmonth = readFromKeyBoard(stdin.readLineSync() ?? '');
    int month = int.parse(inputmonth);
    var deltaMonth = month - dateMonth;

    if (deltaMonth > 0) {
      print('$name não pode dirigir');
    } else if (deltaMonth < 0) {
      print('$name pode dirigir');
    } else if (deltaMonth == 0) {
      print("Informe o dia do seu nascimento:");
      var inputday = readFromKeyBoard(stdin.readLineSync() ?? '');
      int day = int.parse(inputday);
      var deltaDay = day - dateDay;
      if (deltaDay > 0) {
        print('$name não pode dirigir');
      } else {
        print('$name pode dirigir');
      }
    }
  }
}

//Nome
String readFromKeyBoard(String line) {
  if (line.isEmpty) exit(0);
  return line.toString();
}

//Dia
