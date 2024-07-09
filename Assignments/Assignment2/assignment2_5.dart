//5. Write a dart program to calculate the sum of natural numbers.

import 'dart:io';

void main (){

  print('Enter a number i will calculate addition of that from 1 to that number');
  String? nums=stdin.readLineSync();
  int num=int.parse(nums.toString());
  double total=((num*(num+1))/2);
  print('The sum of natural numbers until $num is equal to $total');
}