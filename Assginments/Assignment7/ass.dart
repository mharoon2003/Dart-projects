
import 'dart:io';

class ContactList {
  List<Map<String, String>> contacts = [];

  void addContact(String name, String phoneNumber, String address, String lastName) {
    contacts.add({
      'name': name,
      'phone number': phoneNumber,
      'address': address,
      'last name': lastName,
    });
  }

  void removeContact(String name) {
    contacts.removeWhere((contact) => contact['name'] == name);
  }

  void showAllContacts() {
    for (var contact in contacts) {
      print(contact);
    }
  }

  void showRecentlyAddedContact() {
    if (contacts.isNotEmpty) {
      print(contacts.last);
    } else {
      print('No contacts added yet.');
    }
  }

  void callContact(String name) {
    for (var contact in contacts) {
      if (contact['name'] == name) {
        print('Calling ${contact['name']} - ${contact['phone number']}');
        break;
      }
    }
  }
}

void main() {
  ContactList contactList = ContactList();

  while (true) {
    print('Select an option:');
    print('1. Show contacts');
    print('2. Add contact');
    print('3. Show recently added contact');
    print('4. Show all contacts');
    print('5. Remove contact');
    print('6. Call contact');
    print('0. Exit program');

    String choice = stdin.readLineSync()!;

    if (choice == '0') {
      break;
    }

    switch (choice) {
      case '1':
        contactList.showAllContacts();
        break;
      case '2':
        print('Enter name:');
        String name = stdin.readLineSync()!;
        name.toLowerCase();

        print('Enter phone number:');
        String phoneNumber = stdin.readLineSync()!;

        print('Enter address:');
        String address = stdin.readLineSync()!;

        print('Enter last name:');
        String lastName = stdin.readLineSync()!;

        contactList.addContact(name, phoneNumber, address, lastName);
        break;
      case '3':
        contactList.showRecentlyAddedContact();
        break;
      case '4':
        contactList.showAllContacts();
        break;
      case '5':
        print('Enter name of contact to remove:');
        String name = stdin.readLineSync()!;
        name.toLowerCase();
        contactList.removeContact(name);
        break;
      case '6':
        print('Enter name of contact to call:');
        String name = stdin.readLineSync()!;
        contactList.callContact(name);
        break;
    }
  }
}
