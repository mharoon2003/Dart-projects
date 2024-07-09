//7. Write a dart program to generate multiplication tables of 1-9
import 'dart:io';
void main (){

  print('=========> Multiplication table of 1_9 ========>');

  for(int i=1;i<=10;i++){
    for(int j=1;j<=10;j++){
      stdout.write('    ${j*i}');
    }
    print('');
  }

}