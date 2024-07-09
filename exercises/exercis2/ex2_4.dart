//• Write a switch statement that displays Sunday, Monday, Tuesday,
// Wednesday, Thursday, Friday, Saturday, if day is 0, 1, 2, 3, 4, 5, 6,
// accordingly.
import 'dart:io';
void main(List<String> args) {
  print('Enter the number of weekday between 0_6');
  String? optionS=stdin.readLineSync();
  int option = int.parse(optionS!);
  switch (option) {
    case 0:
      print("Saturday");
      break;
    case 1:
      print("Sunday");
      break;
    case 2:
      print("Monday");
      break;
    case 3:
      print("Tuesday");
      break;
    case 4:
      print("Wednesday");
      break;
    case 5:
      print("Thursday");
      break;
    case 6:
      print("Friday");
      break;
    default:
      print("Invalid number");
  }
}