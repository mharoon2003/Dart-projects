//4. Write a dart program to print your name 100 times

import 'dart:io';

void main (){

  print('Enter your name i will print that 100 times');
  String? name=stdin.readLineSync();
  for(int i =1;i<=100;i++){
    print(' $i _: your name is $name');
  }
  
}