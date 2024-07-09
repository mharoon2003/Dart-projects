//Finals And Constants

//The variables that we are will not change there values after
// first initialization and they dont have to change we can declare them
// by 'final' or 'const' keywords in Dart that can not initialized else.

   final PI = 3.14;//without giving datatype

   final String name= 'Sharif';//with datatype

   const int id = 4321;//with datatype

   const  lastname = 'Saeedy';//without clearing datatype

   late var age ;

   void main (){
     //  PI=32;    // Give us An Error
     //print(age);   //give As ERROR
     //  id = 6785;  //ErROr
     print(PI);
     print(name);
     print(lastname);
     print(id);
     age= 18;
     print(age);  //prints age (18)

   }

