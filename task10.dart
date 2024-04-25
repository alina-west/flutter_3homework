import 'dart:io';

void main() {
  stdout.write("Введите число x: ");
  int x = int.parse(stdin.readLineSync()!);

  int xtanulken = 0;
  int chetnyisanau = 0;

  while (true) {
    stdout.write(
        "Напишите число (когда вы хотите закончить список напишите в строку просто '0': ");
    int number = int.parse(stdin.readLineSync()!);

    if (number == 0) {
      break;
    }

    if (number > x) {
      xtanulken = xtanulken + number;
    }

    if (number % 2 == 0) {
      chetnyisanau++;
    }
  }

  print("Сумма всех чисел последовательности, больших числа $x: $xtanulken");
  print("Количество всех четных чисел последовательности: $chetnyisanau");
}
