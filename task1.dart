import 'dart:io';

void main() {
  stdout.write("Напишите только двузначное число: ");
  int number = int.parse(stdin.readLineSync()!);

  // Проверка на 4 или 7
  bool contains4or7 = false;
  int tempNumber = number;
  while (tempNumber > 0) {
    int digit = tempNumber % 10;
    if (digit == 4 || digit == 7) {
      contains4or7 = true;
      break;
    }
    tempNumber ~/= 10;
  }

  // Проверка на 3, 6 или 9
  bool contains3or6or9 = false;
  tempNumber = number;
  while (tempNumber > 0) {
    int digit = tempNumber % 10;
    if (digit == 3 || digit == 6 || digit == 9) {
      contains3or6or9 = true;
      break;
    }
    tempNumber ~/= 10;
  }

  // Проверка на а
  stdout.write("Введите цифру а: ");
  int a = int.parse(stdin.readLineSync()!);
  bool containsA = false;
  tempNumber = number;
  while (tempNumber > 0) {
    int digit = tempNumber % 10;
    if (digit == a) {
      containsA = true;
      break;
    }
    tempNumber ~/= 10;
  }

  print("Входят ли в число цифры 4 или 7: $contains4or7");
  print("Входят ли в число цифры 3, 6 или 9: $contains3or6or9");
  print("Входит ли в число цифра $a: $containsA");
}
