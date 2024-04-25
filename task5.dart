//abcefg
//a + b + c = e + f + g

import 'dart:io';

void main() {
  stdout.write("Введите шестизначное число: ");
  String input = stdin.readLineSync()!;

  if (input.length != 6) {
    print("введите только шестизначное число.");
    return;
  }

  var altyTanbalySan = input.split("");
  if (int.parse(altyTanbalySan[0]) +
          int.parse(altyTanbalySan[1]) +
          int.parse(altyTanbalySan[2]) ==
      int.parse(altyTanbalySan[3]) +
          int.parse(altyTanbalySan[4]) +
          int.parse(altyTanbalySan[5])) {
    print(true);
  } else {
    print(false);
  }
}
