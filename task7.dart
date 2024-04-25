import 'dart:io';

void main() {
  stdout.write("Напишите число a: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Напишите число b(число b должно быть больше чем а): ");
  int b = int.parse(stdin.readLineSync()!);

  int firstone = 0;
  int secondone = 1000;
  int birinshisan = 1;
  while (birinshisan <= 1000) {
    firstone += birinshisan;
    birinshisan++;
  }
  double average1To1000 = firstone / secondone;
  print("а)Среднее арифметическое от 1 до 1000: $average1To1000");

//a i b
  int barlygy = 0;
  int arasynSanau = b - a + 1;
  int kazirgisan = a;
  while (kazirgisan <= b) {
    barlygy = barlygy + kazirgisan;
    kazirgisan++;
  }
  double averageAtoB = barlygy / arasynSanau;
  print("б)Среднее арифметическое от $a до $b: $averageAtoB");
}
