// this is the first assginment of flutter
import'dart:io';
// 1- printing some texts
 main (){

  print('\"Hi I\'m M.Haroon \"he said  \n');


  // 2_ declaring a final variable and printing that
  print('2_* * * * * * * *');
  print('This is the secound program \n');
  final int x = 7;
  print(x);

  //3_ calculating the (p*t*r)/100
  print('3_* * * * * * * *');
  print('This is the third program \n');
  print('Enter the value of p');
  String? p = stdin.readLineSync();
  print('Enter the value of t');
  String? t = stdin.readLineSync();
  print('Enter the value of r');
  String? r = stdin.readLineSync();
  double pd = double.parse(p!);
  double td = double.parse(t!);// changing the String into double
  double rd = double.parse(r!);//This also answer for 9th questoin
   double result = (pd*td*rd)/100;
   print('The reasult is equal to $result  \n');

   //Calculating the square of given number
  print('4_* * * * * * * *');
  print('This is the fourth program \n');

  print('Enter the number you wanna square that');
  String? number = stdin.readLineSync();
  double dnumber = double.parse(number!);
  double square = dnumber*dnumber;
  print('The square of $dnumber is equal to $square  \n');

  // Gitting the first name and last name and printing the full name
  print('5_* * * * * * * *');
  print('This is the fifth program \n');

  print('Enter your first name : ');
  String? name = stdin.readLineSync();
  print('Enter your last name : ');
  String? lastname = stdin.readLineSync();

  print('Your Full Name is \" $name $lastname \"  \n');

  // 6_  Finding the qoutient and reminder of a number
  print('6_* * * * * * * *');
  print('This is the sixth program \n');
  print('Enter the number you wanna know the qoutient and reminder of that :');
  String? digit = stdin.readLineSync();
  int digiti = int.parse(digit!);
  int qoutient = digiti ~/ 10 ;
  int reminder = digiti % 10 ;
  print('THe qoutient of digit ( $digiti ) you have entered is equal to $qoutient and the riminder of that is equal to $reminder \n \n ');
   

  // 7_ swapping two numbers
  print('7_* * * * * * * *');
  print('This is the seventh program \n');
  int xI = 67;
  int y = 99;
  int temp ;
  temp = x;
  xI = y;//now the value of x is equal to 99
  y = temp;//now the value of y is equal to 67
  print('the value of x = $x  and value of y = $y  \n  \n');


   //Calculating split amount of bill
  print('8_* * * * * * * *');
  print('This is the eighth program \n');
  
  print('enter the number of the persons :');
  String? numberOfPeople = stdin.readLineSync();
  print('How much is the total amount of bill ');
  String? totalAmount = stdin.readLineSync();
  int numberOfPeoplei = int.parse(numberOfPeople.toString());//we can use also ! here like above
  int totalAmounti = int.parse(totalAmount.toString());
  double per_person = totalAmounti / numberOfPeoplei ;
  print('The amount per person is equal to $per_person \n \n');
  
  //removing all with spaces from a String
  print('9_* * * * * * * *');
  print('This is the ninthth program \n');
  String sentences = 'this is without space sentenceses';
  String withoutS = sentences.trimLeft();
  print(sentences.replaceAll(' ', ''));//it removes all the white spaces

  // THe 9th answer of question (changing String into int )is used in many places above 

  return 0;
}