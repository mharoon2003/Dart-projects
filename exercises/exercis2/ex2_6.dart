//• Write a program to print even numbers from 2 to 100 except 40 to 60

void main (){

  for(int i = 1 ; i<=100 ;i++){
    if( i>=40 && i<=60){
      continue;
    }
    if(i%2==0 ){
      print('even number $i');}
  }
}