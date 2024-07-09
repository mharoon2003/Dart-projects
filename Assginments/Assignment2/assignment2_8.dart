//8. Write a dart program to create a simple calculator that performs addition,
// subtraction, multiplication, and division

import 'dart:io';

void main (){

  print('''  Calculator
  ===============>
  1_for adding to numbers
  2_subtraction
  3_multiplication
  4_division
  0_for exit
  ================>''');
  print('enter a option:');
  String? nums=stdin.readLineSync();
  int num=int.parse(nums!);
  switch(num){
    case 1: {
      print('Enter the first number to adding');
      String? nums1=stdin.readLineSync();
      int num1=int.parse(nums1!);
      print('Enter the second number to adding');
      String? nums2=stdin.readLineSync();
      int num2=int.parse(nums2!);
      print('THE sum of numbers ($num1 + $num2) is ${num1+num2}');
    }

  }

}