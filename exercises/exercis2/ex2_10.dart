//The problem is to guess what number a computer has in mind. You
// will write a program that randomly generates an integer between 0 and
// 100, inclusive. The program prompts the user to enter a number
// continuously until the number matches the randomly generated
// number. For each user input, the program tells the user whether the
// input is too low or too high, so the user can make the next guess
// intelligently. Here is a sample run:
import 'dart:io';
import 'dart:math';

void main (){

  int num = Random().nextInt(100);
  //print(num);
  print('Enter your the number you\'r guessing between 0_100:' );
  String? gnum= stdin.readLineSync();
  int numi = int.parse(gnum!);
  int i = 2;
  while (num!=numi){
    if(numi>num){
      print('The number is heigher.  Enter another ');
      gnum= stdin.readLineSync();
      numi = int.parse(gnum!);
    }
    if(numi<num){
      print('THe number is lower. Enter another ');
      gnum= stdin.readLineSync();
      numi = int.parse(gnum!);
    }
    i++;   //in every turn i increases one
  }
  print('Excellent you guessed well 👍😘❤️');
  print('You guessed the number in time $i trying !');
  if(i<=5){
    print('wow your guessing sense is great and you are smart ️️👌👍!');
  }
  if(i<=10 && i>=5){
    print('wow your guessing sense is somewhat good ✌️!');
  }
  if(i>15){
    print('Finally you guessed the number before you die 🥴💀');
  }
}