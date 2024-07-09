

    // Operators

    void main (){
      int c = 34;

      int y = 68;

      int t = 17;

      int  x = 8;
          // ARITHMETIC OPERATORS
      print(c / t );// Prints (34 /17 = 2 ) 2
      print(c % t);  // Prints (34 % 17 = 0) 0
      print(t % x); //prints ( 17 % 8 = 1)1
      print(c / x);  //Prints (34 / 8) 4.25
      print(c ~/ x );//prints (34 / 8 = 4.25) get integer 4


      // Increament and  Decreament Operators
      int b = 8;

      int a = 2;
      assert (a++ == 2);// there is a == 2 but the next line it will be 3
      print(a);  // in here a is 3 so it prints 3

      assert(++b == 9);  // in here b change its value to 9 in this line
      print(b++);  // prints 9 because the value of b++ increases in next line
      print(b);//prints 10

      assert (b++ == 10);  //in here the value of b is 10 but decreases in next line
      print(b);// prints 11

          // EQUALITY OPERATORS

      a = 5; // Changing  the value of variable a

      b = 4;  // so thus b

      assert (a >= b);
      print('a is bigger than b ' );


      assert ( a <= (b+a));
      print('(a is not bigger than (a + b)');

      assert((a-b)== 1);
      print('(a-b) is equal to 1 ');


    }