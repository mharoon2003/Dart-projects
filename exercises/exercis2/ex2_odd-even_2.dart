//Write a program that prompts the user to enter an integer.
// • If the number is an even number, the program displays The number is even
// • If the number is an odd number, the program displays The number is odd.

import 'dart:io';

void main (){
  print('Enter the number you wanna know that is odd or even');
  String? number = stdin.readLineSync();
  int numberi = int.parse(number!);
  if(numberi%2==0){
    print('the number is even $numberi');
  }else{
    print('The number is odd $numberi');
  }
}