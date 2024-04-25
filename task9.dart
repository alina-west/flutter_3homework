import 'dart:io';

void main() {
  stdout.write("Введите любое натуральное число: ");
  int number = int.parse(stdin.readLineSync()!);

  int kanshaUshBar = 0;
  int songysanKaitalanuy = 0;
  int chetnyiSandar = 0;
  int bestenulken = 0;
  int jetidenulken = 1;
  int nolmenbesSanau = 0;

  int lastDigit = number % 10;
  int digit = 0;
  while (number > 0) {
    digit = number % 10;
    if (digit == 3) {
      kanshaUshBar++;
    }
    if (digit == lastDigit) {
      songysanKaitalanuy++;
    }
    if (digit % 2 == 0) {
      chetnyiSandar++;
    }
    if (digit > 5) {
      bestenulken += digit;
    }
    if (digit > 7) {
      jetidenulken *= digit;
    }
    if (digit == 0 || digit == 5) {
      nolmenbesSanau++;
    }
    number ~/= 10;
  }

  print("Количество цифр 3 в заданном числе: $kanshaUshBar");
  print(
      "Сколько раз последняя цифра встречается в заданном числе: $songysanKaitalanuy");
  print("Количество четных цифр в заданном числе: $chetnyiSandar");
  print("Сумма цифр числа, больших пяти: $bestenulken");
  print("Произведение цифр числа, больших семи: $jetidenulken");
  print("Сколько раз в числе встречаются цифры 0 и 5: $nolmenbesSanau");
}


//составное условие есть и после этого я не использовала нее более одного условного оператора\ биз в шыгару ушин сондай
//неге while колдану керек\ себеби ол букил операциядан биринин артынан бири отип шыгады гой
//биз python мен есеп шыгарганда осыныы кооп колданатынбыз