//палиндром :(

import 'dart:io';

void main() {
  stdout.write("Введите натуральное число которое до 9999 или равно этому: ");
  int n = int.parse(stdin.readLineSync()!);

  int naoborot = 0;
  int nsany = n;

  while (nsany != 0) {
    int digit = nsany % 10;
    naoborot = naoborot * 10 + digit;
    nsany ~/= 10;
  }

  bool palindromeBa = n == naoborot;

  if (palindromeBa) {
    print("$n - это палиндром");
  } else {
    print("$n - это не палиндром.Оно не равно этому");
  }
}
