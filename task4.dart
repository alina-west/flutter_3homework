import 'dart:io';

void main() {
  print('Введите натуральное число которое имеет только 4 цифр:');
  int san = int.parse(stdin.readLineSync()!);

  bool birdeisandar = containsExactlyThreeSameDigits(san);

  if (birdeisandar) {
    print('Число $san содержит ровно три одинаковые цифры');
  } else {
    print('Число $san не содержит ровно три одинаковые цифры');
  }
}

bool containsExactlyThreeSameDigits(int number) {
  String sandartizimi = number.toString();
  int i = 0;

  Map<String, int> digitCount = {};

  while (i < sandartizimi.length) {
    String digit = sandartizimi[i];
    if (digitCount.containsKey(digit)) {
      digitCount[digit] = digitCount[digit]! + 1;
    } else {
      digitCount[digit] = 1;
    }
    i++;
  }

  for (int count in digitCount.values) {
    if (count == 3) {
      return true;
    }
  }

  return false;
}
