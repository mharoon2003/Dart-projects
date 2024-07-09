// Default values of nullable variables

//Uninitialized variables that have a nullable type have an initial value of null.
// Even variables with numeric types are initially null, because numbers—like everything
// else in Dart—are objects.

   String? name;

    int? age;

    bool? IsMaried;

    void main (){

      print(name);
      print(age);       //prints all null because all default value of
      print(IsMaried);   // nullable variables are null.
       assert(IsMaried == null);
        // assert is a methode that if the condition was true the code will
      // implemented if the condition was false compiler gives Error
    }
