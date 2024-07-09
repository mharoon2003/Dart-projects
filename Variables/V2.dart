   // variables   null able and non_nullable
  // how to declare a nullable variables

  String? name ; // Nullable type. Can be `null` or string.
  //by the sign of ?  we can make variables nullable

   String lastname ='ali';  // Non-nullable type. Cannot be `null` but can be string.

   void main (){
     lastname='amin';//we hava to initialize our non_nullable variables before using them
     print(lastname);
     print(name);
   }