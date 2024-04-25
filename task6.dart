import 'dart:io';

void main() {
  stdout.write("Напишите число a: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Напишите число b(число b должно быть больше чем а): ");
  int b = int.parse(stdin.readLineSync()!);

  int summajuztobesjuz = (500 + 100) * (500 - 100 + 1) ~/ 2;
  print("Сумма всех целых чисел от 100 до 500: $summajuztobesjuz");

  int summaatob = (b + a) * (b - a + 1) ~/ 2;
  print("Сумма всех целых чисел от $a до $b: $summaatob");
}


//бул жакта жай гана формула колдану керек
//S = n⋅(a**1 + a**n) /2 негизги формуласы 