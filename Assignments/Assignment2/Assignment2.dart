//1. Write a dart program to check if the number is odd or even

  import'dart:io';

  void main (){

    print('Enter the character and i will check that if that is even or odd');
    String? nums= stdin.readLineSync();
    int num=int.parse(nums!);

    if(num%2==0){
      print('The numver is even $num');
    }else{
      print('The number is odd $num');
    }

    print('2_ ====================>');
    //2. Write a dart program to check whether a character is a vowel or consonant

    print('Enter a character i will tell that if that is vowel or constant');
    String? char=stdin.readLineSync();


    switch(char?.toLowerCase()){

      case 'a': {
        print('This is vowel letter');
        break;
      }
      case 'e': {
        print('This is vowel letter');
        break;
      }
      case 'i': {
        print('This is vowel letter');
        break;
      }
      case 'o': {
        print('This is vowel letter');
        break;
      }
      case 'u': {
        print('This is vowel letter');
        break;
      }
      default :{
        print('this is constant letter');
      }

    }

  }