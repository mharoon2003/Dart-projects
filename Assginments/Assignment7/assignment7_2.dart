//  Library Management System
// Welcome to the Library Management System
// click 1 for adding a book to library
// click 2 for searching a specific book with name of book
// click 3 for removing a book from the library
// click 4 for the newest book of the library
// click 0 for exiting the program
// create a Book class with attributes of
// book name ,author , edition , price
// create a Library class and create a List of books with the methods of
// adding a book , searching book , removing book , seeing the newest book
//

//class Book
import 'dart:io';

class Book {
  var name,author,edition,price;

  Book( this.name, this.author, this.price, this.edition);//constructor of class

}

//class Library
class Library{
  List<Book> books=[];

  void addBook(Book newbook){

    books.add(newbook);
    print('New Book added successfully!');
  }

  void deleteBook(String name){
    if(books.isNotEmpty){
      var foundbook = books.where((book) => book.name.toLowerCase() == name.toLowerCase()).toList();
      if(foundbook.isNotEmpty){
      books.removeWhere((book) =>
      book.name.toLowerCase() == name.toLowerCase());
      print('the book is removed successfully');
      }else{
        print('the book name you inserted does not exist in library');
      }
    }else{
      print('the library is empty');
    }
  }

  void showNewestBook(){
    if(books.isNotEmpty){
      Book newestBook=books.last;
      print('The newest book of library is 👇⬇️:');
      print('Name : ${newestBook.name}');
      print('Author : ${newestBook.author}');
      print('edition of book : ${newestBook.edition}');
      print('price of book : ${newestBook.price}');
    }else{
      print('The library is empty 😢');
    }
  }

  void showAllBooks(){
    if(books.isNotEmpty){
      for(int i=0;i<books.length;i++){
        print('Book ${i+1}');
        print('Name : ${books[i].name}');
        print('Author : ${books[i].author}');
        print('edition : ${books[i].edition}');
        print('price : ${books[i].price}');
        print('==========================>');
      }
    }else {
      print('The library has not any book 🙏😒😢');
    }
  }

  void searchBook(String bookName) {
    Book? foundBook = books.firstWhere((book) => book.name.toLowerCase() == bookName.toLowerCase(), orElse: () => Book("", "", "", 0.0));
    if (foundBook.name.isEmpty) {
      print("Book not found in the library.");
    } else {
      print("Book found in the library: \n Name: ${foundBook.name}\n  Author :  ${foundBook.author} \n Edition : ${foundBook.edition}\n Price: ${foundBook.price}");
    }
  }

}

void main (){

 Library library = Library();

 while (true) {
   print('''
   
   | ======> Welcome to the Library Management System ======> |
   | Click 1 for showing the books                            |
   | Click 2 for adding book to library                       |
   | Click 3 for showing recently added book                  |
   | Click 4 for showing all books of library                 |
   | Click 5 for removing a book from library                 |
   | click 6 for searching a book with Name                   |
   | Click 0 for exiting program                              |
   | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|
   
   ''');

   String? choice = stdin.readLineSync();
   if (choice == '0') {
     break;
   }

   switch(choice){
     case '1' : {
       library.showAllBooks();
       break;
     }
     case '2' :{
       print('Enter the Name of Book:');
       String name = stdin.readLineSync()!;
       print('enter the Author\'s name :');
       String author=stdin.readLineSync()!;
       print('Enter the edition of Book :');
       String edition=stdin.readLineSync()!;
       int editioni=int.parse(edition);
       print('Enter the price of book :');
       String price=stdin.readLineSync()!;
       int pricei=int.parse(price);
       Book newbook=new Book(name, author, pricei, editioni);
       library.addBook(newbook);
       break;
     }
     case'3' :{
       library.showNewestBook();
       break;
     }
     case '4': {
       library.showAllBooks();
       break;
     }
     case '5': {
       if(library.books.isNotEmpty){
       print('Enter the name of the book to remove:');
       String name = stdin.readLineSync()!;
       name.toLowerCase();
       library.deleteBook(name);}else{
         print('the Library is empty');
       }
       break;
     }
     case '6':{
       if(library.books.isNotEmpty) {
         print('Enter the name of book that you are searching for :');
         String name = stdin.readLineSync()!;
         name.toLowerCase();
         library.searchBook(name);
       }else{
         print('The library has not any book 🙏😒😢');
       }
     }
     default:{
       print('Invalid choice. Please try again.\n');}
   }
   }

}