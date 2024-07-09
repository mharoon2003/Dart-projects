  //Late variables
  //Declaring a non-nullable variable that's initialized after its declaration.
  // Lazily initializing a variable.
  //we use this kind of variables when we are not sure if
  //we want to initialize a variables late . but we have to initialize them

   late var name;
   String? country;//prints NULL
   late int age;

  void main (){

    print(country);
    //print(age);// give us an Error
   // print(name); // GIve us an Error
    age = 34;
    name= 'Hamed';
    print(age);// Doesnt give us an Error
    print(name);

  }