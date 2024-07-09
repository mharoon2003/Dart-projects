//Use for loop to write a program to print the following pattern.
/* 1_
       * * * * * *
       * * * * *
       * * * *
       * * *
       * *
       *
*/

/* 2_
       1 1 1 1 1 1
       2 2 2 2 2
       3 3 3 3
       4 4 4
       5 5
       6
*/

/* 3_
       1
       1 2
       1 2 3
       1 2 3 4
       1 2 3 4 5
       1 2 3 4 5 6
*/

/* 4_
       * * * * * *
         * * * * *
           * * * *
             * * *
               * *
                 *
*/

/* 5_
                 *
               * *
             * * *
           * * * *
         * * * * *
       * * * * * *
*/

/* 6_
       * * * * * *
       *         *
       *         *
       *         *
       *         *
       * * * * * *
*/


/* 7_

             *
            * *
           * * *
          * * * *
         * * * * *
        * * * * * *

*/


 import 'dart:io';
 void main (){
   print('==========> 1');
  for(int row = 6;row>=1;row--){
    for(int col=row;col>=1;col--){
      stdout.write('* ');//1 space and 1 *
    }
    print('');
  }
  print('==========>2');
  //2_

  for(int row = 1;row<=6;row++){
    for(int col=6; col>=row;col--){
      stdout.write('$row ');//1space
    }
    print('');
  }
  print('==========>3');
  //3_

  for(int row = 1;row<=6;row++){
    for(int col=1; col<=row;col++){
      stdout.write('$col ');//1space
    }
    print('');
  }
  print('==========>4');
  //4_

  for(int row = 6;row>=1;row--){
    for(int col=6; col>=1;col--){
      if(col>row){
        stdout.write('  ');//2 spaces
      }else{
        stdout.write('* ');//1 space and 1 *
      }
    }
    print('');
  }
   print('==========>5');

  //5_

   for(int row = 1;row<=6;row++){
     for(int col=6; col>=1;col--){
       if(col>row){
         stdout.write('  ');//2 spaces
       }else{
         stdout.write(' *');//1 space and 1 *
       }
     }
     print('');
   }
//6_
   print('==========>6');
   for(int row = 1;row<=7;row++){
     for(int col=1; col<=7;col++){
      if(row==1 || row ==7 || col==1 || col==7){
        stdout.write('* ');//1 space and 1 *
      }else {
        stdout.write('  ');//2 spaces
      }
     }
     print('');
   }

   //7
   print('==========>7');
   for(int row = 1;row<=6;row++){
     for(int col=6; col>=1;col--){
       if(col>row){
         stdout.write(' ');//1space
       }else{
         stdout.write(' *');//1space  1 *
       }
     }
     print('');
   }

}