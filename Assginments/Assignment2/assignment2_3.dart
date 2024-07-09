//    print('3_ ==============================>');
//3. Write a dart program to check whether a number is positive, negative, or
//zero.
import 'dart:io';
void main (){

  print('Enter a number i will till if that is positive or negative ');
  String? nums=stdin.readLineSync();
  int num=int.parse(nums!);
  if(num>0){
    print('The number is positive $num');
  }
  if(num==0){
    print('The number is equal to zero $num');
  }
  if(num<0){
    print('The number is negative $num');
  }

}