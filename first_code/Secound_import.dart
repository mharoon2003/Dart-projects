
import 'dart:io';// a dart library that allows as to take input from user


main (){
  print('Enter Your Name ');
  var name = stdin.readLineSync();//for getting input from user
  print('Enter Your Last Name ');
  var lastname = stdin.readLineSync();
  print(name.toString() + "  " + lastname.toString());

  stdout.write(name);
  stdout.write(lastname);// for printing both name and last name in one line

  print("    ");

  print('Enter Your Score ');
  var score =stdin.readLineSync() as int;
  //this is an control flow statement

  if (score >= 55){
    print("You passed the exam succesfully");

  }  else {
    print("You failed . please try more");

  }

}