// Write a program to print even numbers from 0 to 100.
// • or
// • Write a program to print odd numbers from 1 to 99.
void main (){

  for(int i = 0 ;i<=100;i++){
    if(i%2==0){
      print('Even number $i');
    }
  }
   print('===================>');
  for(int i = 1;i<=99;i++){
    if(i%2!=0){
      print('Odd number $i');
    }
  }

}