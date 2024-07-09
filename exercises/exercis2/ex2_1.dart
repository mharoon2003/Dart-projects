//Write a program that prompts the user to enter username and
// password.
// • If the username equals “admin” and password equals “0000” then the program
// displays “you logged in”
// • If the username and password is not correct then the program displays
// “username and password is not correct, so you can not log in”.
import 'dart:io';
void main (){
   print('Enter your user name :');
   String? username = stdin.readLineSync();
   print('Enter your password :');
   String? password = stdin.readLineSync();
   int passwordi = int.parse(password!);
   if (username == 'admin' && passwordi == 0000){
     print('access granted welcome ! ');
   }else{
      print('incorrect password or user name ! try again ');
   }

}