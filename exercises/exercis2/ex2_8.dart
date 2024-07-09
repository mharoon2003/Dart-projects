//• We want to develop a program that prompts the user to enter an
// answer for a question on addition of two single digits. Using a loop,
// you can rewrite the program to let the user repeatedly enter a new
// answer until it is correct.

import 'dart:io';

void main (){

  print('Enter the num 1 :');
  String? nums= stdin.readLineSync();
  int num1= int.parse(nums.toString());
  print('Enter the num 2 :');
  String? numss= stdin.readLineSync();
  int num2= int.parse(numss.toString());

  print('enter the answer of $num1 + $num2 : ');
  String? resultu= stdin.readLineSync();
  int resultsi= int.parse(resultu!);
  int i = 1;
  while(resultsi != (num1+num2)) {
    print('wrong 🥲❤️answer enter another number : ');
    resultu = stdin.readLineSync();
    resultsi = int.parse(resultu!);
    i++;
  }
  print("well done 👍❤️");
  print('you gave answer in $i times trying');
}