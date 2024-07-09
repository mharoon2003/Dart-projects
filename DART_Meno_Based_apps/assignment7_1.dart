//contact List Program
//create a program named Contact List Program using the OOP concepts program
// should be meno based like below:
// click 1 for showing contacts
// click 2 for adding contacts
// click 3 for showing recently added contact
// click 4 for showing all contacts
// click 5 for removing contact click
// 0 for exiting program

import 'dart:io';

class ContactList {
  String name;
  String phoneNumber;
  String address;
  String lastName;

  ContactList(this.name, this.phoneNumber, this.address, this.lastName);
}

class ContactListProgram {
  List<ContactList> contacts = [];

  void addContact(String name, String phoneNumber, String address,
      String lastName) {
    ContactList newContact = ContactList(name, phoneNumber, address, lastName);
    contacts.add(newContact);
    print('Contact added successfully!\n');
  }

  void removeContact(String name) {
    //deleting with name of contact
    if (contacts.isNotEmpty) {
      contacts.removeWhere((contact) =>
      contact.name.toLowerCase() == name.toLowerCase());
      print('contact removed successfully');
    } else {
      print('The list is empty');
    }
  }

  //void removeContact(int index) {          // deleting with the index
  //if (contacts.length > index) {
  //contacts.removeAt(index);
  //print('Contact removed successfully!\n');
  //} else {
  // print('Invalid contact index.\n');
  //}
  //}

  void showAllContacts() {
    if (contacts.isNotEmpty) {
      for (var i = 0; i < contacts.length; i++) {
        print('Contact ${i + 1}:');
        print('Name: ${contacts[i].name}');
        print('Phone Number: ${contacts[i].phoneNumber}');
        print('Address: ${contacts[i].address}');
        print('Last Name: ${contacts[i].lastName}\n');
      }
    } else {
      print('The contact list is empty');
    }
  }

  void showRecentlyAddedContact() {
    if (contacts.isNotEmpty) {
      ContactList recentContact = contacts.last;
      print('Recently added contact:');
      print('Name: ${recentContact.name}');
      print('Phone Number: ${recentContact.phoneNumber}');
      print('Address: ${recentContact.address}');
      print('Last Name: ${recentContact.lastName}\n');
    } else {
      print('No contacts available.\n');
    }
  }

  //void callContact(int index) {                  //calling with the index
  //if (contacts.length > index) {
  //print('Calling ${contacts[index].name} (${contacts[index].phoneNumber})...\n');
  //} else {
  //print('Invalid contact index.\n');
  //}
  //}
//}
  void callContact(String name) {
    //calling with name
    for (var contact in contacts) {
      if (contact.name.toLowerCase() == name.toLowerCase()) {
        print('Calling ${contact.name} - ${contact.phoneNumber}');
        break;
      }else{
        print('There is no such contact in Contact List Please enter right name');
      }
    }
  }

  void searchContact(String contactName) {
    ContactList? foundContact = contacts.firstWhere((contact) =>
    contact.name.toLowerCase() == contactName.toLowerCase(),
        orElse: () => ContactList("", "", "", 0.0 as String));
    if (foundContact.name.isEmpty) {
      print("The contact did not found in contact list.");
    }else{
      print('''contact found : 
      Name: ${foundContact.name}  /  Phone Number : ${foundContact.phoneNumber}
      Address : ${foundContact.address} /  Last name: ${foundContact.lastName}''');
    }
  }
}

  void main() {
    ContactListProgram contactListProgram = ContactListProgram();

    while (true) {
      print('''
   | ======> Welcome to the Contact List Program ======> |
   | Click 1 for showing contacts                        |
   | Click 2 for adding contacts                         |
   | Click 3 for showing recently added contact          |
   | Click 4 for showing all contacts                    |
   | Click 5 for removing contact                        |
   | click 6 for calling a contact                       |
   | click 7 for searching a contact by name             |
   | Click 0 for exiting program                         |
   | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |
   ''');

      String? choice = stdin.readLineSync();
      if (choice == '0') {
        break;
      }

      switch (choice) {
        case '1':
          contactListProgram.showAllContacts();
          break;
        case '2':
          print('Enter Name:');
          String name = stdin.readLineSync()!;
          print('Enter Phone Number:');
          String phoneNumber = stdin.readLineSync()!;
          print('Enter Address:');
          String address = stdin.readLineSync()!;
          print('Enter Last Name:');
          String lastName = stdin.readLineSync()!;
          contactListProgram.addContact(name, phoneNumber, address, lastName);
          break;
        case '3':
          contactListProgram.showRecentlyAddedContact();
          break;
        case '4':
          contactListProgram.showAllContacts();
          break;
        case '5':
          print('Enter the name of the contact to remove:');
          String name = stdin.readLineSync()!;
          name.toLowerCase();
          contactListProgram.removeContact(name);
          //int index = int.parse(stdin.readLineSync()!);
          //contactListProgram.removeContact(index);
          break;
        case '6':{
          if(contactListProgram.contacts.isNotEmpty){
          print('Enter the name of contact to call');
          String name = stdin.readLineSync()!;
          contactListProgram.callContact(name);}else{
            print('The contact list is empty!😊');
          }
          break;}
      //int index1=int.parse(stdin.readLineSync()!);
      //contactListProgram.callContact(index1);
        case '7' :{
          if(contactListProgram.contacts.isNotEmpty){
          print('Enter the name of contact to search :');
          String name = stdin.readLineSync()!;
          name.toLowerCase();
          contactListProgram.searchContact(name);
          }else{
            print('The contact list is empty!😊');
          }
        }
        default:
          print('Invalid choice. Please try again.\n');
      }
    }
  }

