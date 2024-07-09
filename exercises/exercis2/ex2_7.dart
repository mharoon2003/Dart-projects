//• Use for loop to write a program to print the following pattern.
// *****************
// *****************
// *****************
// *****************
// *****************
// *****************
// *****************

import 'dart:io';

void main (){

  for(int col = 1; col<=6;col++){   //first loop is for row
    for(int row = 1;row<=10;row++){ //secound loop is for column
      stdout.write('*');
    }
    print('');//This is for an enter to every column fenish and row begins
  }
}