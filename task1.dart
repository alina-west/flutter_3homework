import 'dart:io';

void main() {
  stdout.write("Напишите только двузначное число: ");
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
  bool ushIliTogyzIliAlty = false;
  sandarT = number;
  while (sandarT > 0) {
    int digit = sandarT % 10;
    if (digit == 3 || digit == 6 || digit == 9) {
      ushIliTogyzIliAlty = true;
      break;
    }
    sandarT ~/= 10;
  }

  // Проверка на а
  stdout.write("Введите цифру а: ");
  int a = int.parse(stdin.readLineSync()!);
  bool berilgenA = false;
  sandarT = number;
  while (sandarT > 0) {
    int digit = sandarT % 10;
    if (digit == a) {
      berilgenA = true;
      break;
    }
    sandarT ~/= 10;
  }

  print("Входят ли в число цифры 4 или 7: $jetiMentort");
  print("Входят ли в число цифры 3, 6 или 9: $ushIliTogyzIliAlty");
  print("Входит ли в число цифра $a: $berilgenA");
}
