//• Write a program that prompts the user to enter an integer.
// • If the number is a multiple of 5, the program displays HiFive.
// • If the number is divisible by 2, it displays HiEven.

import 'dart:io';

void main (){

  print('Enter the number you wanna know that is even or dividable to 5 ');
  String? number = stdin.readLineSync();
  int numberi = int.parse(number!);
  if(numberi %2 == 0 || numberi %5 ==0){
    if(numberi%2==0 && numberi%5 ==0){
      print('HIFIVE && HIeven');
    }
    if(numberi%2==0 && numberi!=0){
      print('Hieven');
    }
    if(numberi%5==0 && numberi%2!=0){
      print('HiFive');
    }
  }else{
    print('the number is not dividable to any of 2 and 5');
  }
}