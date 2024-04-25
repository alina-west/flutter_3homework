import 'dart:io';

void main() {
  stdout.write("напишите только трехзначное число: ");
  int number = int.parse(stdin.readLineSync()!);

  // Проверка на 4 или 7
  bool jetiMentort = false;
  int sandarT = number;
  while (sandarT > 0) {
    int digit = sandarT % 10;
    if (digit == 4 || digit == 7) {
      jetiMentort = true;
      break;
    }
    sandarT ~/= 10;
  }

  // Проверка на 3, 6 или 9
  bool ushIliTogyzIliSAlty = false;
  sandarT = number;
  while (sandarT > 0) {
    int digit = sandarT % 10;
    if (digit == 3 || digit == 6 || digit == 9) {
      ushIliTogyzIliSAlty = true;
      break;
    }
    sandarT ~/= 10;
  }

  // Проверка на  n \ n ол сиздин саныныз
  stdout.write("Введите цифру n: ");
  int n = int.parse(stdin.readLineSync()!);
  bool sanberilgenN = false;
  sandarT = number;
  while (sandarT > 0) {
    int digit = sandarT % 10;
    if (digit == n) {
      sanberilgenN = true;
      break;
    }
    sandarT ~/= 10;
  }

  print("Входят ли в число цифры 4 или 7: $jetiMentort");
  print("Входят ли в число цифры 3, 6 или 9: $ushIliTogyzIliSAlty");
  print("Входит ли в число цифра $n: $sanberilgenN");
}
