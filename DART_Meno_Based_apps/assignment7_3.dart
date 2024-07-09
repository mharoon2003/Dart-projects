// Student Management System
// create a program called Student Management System using OOP Concepts
// program should be meno based as below
// WELCOME TO THE STUDENT MANAGEMENT SYSTEM
// click 1 for showing all students in the list
// click 2 for adding new student to the list
// click 3 for seeing the newest student come to class
// click 4 for seeing the student who got biggest score in class
// click 5 to remove a student by the name
// click 6 for searching a student by name
// click 0 for exiting the program

// create a class named Student with fields name , last name ,phone, score,id
// create another class named StudentList and the List of students with the functions
// 1_showAllStudents: should show all students in the list
// 2_ addStudent : should add a new student to the list
// 3_ showNewestStudent : should show the newest student added to the list
// 4_ bestScore: should show the student who got biggest score
// 5_ removeStudent: should delete a student by name
// 6_ searchStudent: should search a student by name
//Note : the program should not exit until user enter 0 and show the meno

import 'dart:io';

class Student {
  String name;
  String lastName;
  String phone;
  int score;
  int id;

  Student(this.name, this.lastName, this.phone, this.score, this.id);
}

class StudentList {
  List<Student> students = [];

  void showAllStudents() {
    if(students.isNotEmpty){
    for (var student in students) {
      print('''
      Id:${student.id} /  Name: ${student.name}
      Last name:  ${student.lastName} /  Phone: ${student.phone}
      Score: ${student.score}''');}
    }else{
      print('The student list is empty!');
    }
  }

  void addStudent(Student student) {
    students.add(student);
  }

  void showNewestStudent() {
    if (students.isNotEmpty) {
      var newestStudent = students.last;
      print(
          'Newest Student: ${newestStudent.name} / ${newestStudent.lastName} \n  Phone: ${newestStudent.phone} / Score: ${newestStudent.score}');
    } else {
      print('Student list is empty.');
    }
  }

  void bestScore() {
    if (students.isEmpty) {
      print('Student list is empty.');
      return;
    }

    var bestStudent = students.reduce((a, b) => a.score > b.score ? a : b);
    print(
        'Student with the highest score: ${bestStudent.name} / ${bestStudent.lastName}\n Phone: ${bestStudent.phone} / Score: ${bestStudent.score}');
  }

  void removeStudent(String name) {
    var foundStudent = students.where((student) => student.name.toLowerCase() == name.toLowerCase()).toList();
    if(foundStudent.isNotEmpty){
    students.removeWhere((student) => student.name.toLowerCase() == name.toLowerCase());
    print('student $name removed successfully');
    }else{
      print('Student with this name "$name" does not exist');
    }
  }

  void searchStudent(String name) {
    var foundStudents = students.where((student) => student.name.toLowerCase() == name.toLowerCase()).toList();
    if (foundStudents.isEmpty) {
      print('Student $name not found.');
    } else {
      for (var student in foundStudents) {
        print('''
        Id: ${student.id} /  Name: ${student.name} 
        Last name: ${student.lastName} /  Phone: ${student.phone}
         Score: ${student.score}''');
      }
    }
  }
}

void main() {
  var studentList = StudentList();
  int id = 0;

  while (true) {
    print('''
    * * * * * * * WELCOME TO THE STUDENT MANAGEMENT SYSTEM * * * * * * * *
    * Click 1 for showing all students in the list                       *
    * Click 2 for adding new student to the list                         *
    * Click 3 for seeing the newest student come to class                *
    * Click 4 for seeing the student who got the biggest score in class  *
    * Click 5 to remove a student by the name                            *
    * Click 6 for searching a student by name                            *
    * Click 0 for exiting the program                                    *
    * * * * * * * * * * * * * * * * *  * * * * * * * * * * * * * * * * * *  
    ''');

    var choice = stdin.readLineSync()!;
        if(choice == '0'){
          break;
        }

    switch (choice) {
      case '1':
        studentList.showAllStudents();
        break;
      case '2':
        print('Enter student details:');
        print('Name:');
        var name = stdin.readLineSync()!;
        print('Last Name:');
        var lastName = stdin.readLineSync()!;
        print('Phone:');
        var phone = stdin.readLineSync()!;
        print('Score:');
        var score = int.parse(stdin.readLineSync()!);
        id++;
        var newStudent = Student(name, lastName, phone, score, id);
        studentList.addStudent(newStudent);
        break;
      case '3':
        studentList.showNewestStudent();
        break;
      case '4':
        studentList.bestScore();
        break;
      case '5':
        if(studentList.students.isNotEmpty){
          print('Enter student name to remove:');
        var name = stdin.readLineSync()!;
        name.toLowerCase();
        studentList.removeStudent(name);
        }else{
          print('The student list is empty');
        }
        break;
      case '6':
        if(studentList.students.isNotEmpty){
        print('Enter student name to search:');
        var name = stdin.readLineSync()!;
        name.toLowerCase();
        studentList.searchStudent(name);
        }else{
          print('The student list is empty first you have to add some!');
        }
        break;
      default:
        print('Invalid choice, please try again.');
    }
  }
}
