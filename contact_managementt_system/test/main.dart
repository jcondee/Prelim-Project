import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:conde_prelim/contact_provider.dart';
import 'package:conde_prelim/models/contact_model.dart';



void main() {
  
  final container = ProviderContainer();
  
  final contactService = container.read(contactServiceProvider);

  while (true){
    print('Contact Management System');
    print('\nContact Management System');
    print('1. Add Contact');
    print('2. View Contacts');
    print('3. Update Contact');
    print('4. Delete Contact');
    print('5. Exit');
    print('Select an Option: ');
    var choices = stdin.readLineSync();


    switch(choices){
      case '1':
      print('Enter Name: ');
      var name = stdin.readLineSync()!;
      print('Enter Phone Number: ');
      var phoneNum = stdin.readLineSync()!;
      print('Enter Email: ');
      var email = stdin.readLineSync()!;
      print('Enter address: ');
      var address = stdin.readLineSync()!;

      contactService.addContact(Contact(
        name: name,
        phoneNum: phoneNum,
        email: email,
        address: address


      ));
    break;

    case '2':
    contactService.viewContacts();

    break;

    case '3':
    print('Enter contact name:');
    var nameToUpdate = stdin.readLineSync()!;
    print('Update name: ');
    var newName = stdin.readLineSync()!;
    print('Update Phone #: ');
    var newPhoneNum = stdin.readLineSync()!;
    print('Update Email: ');
    var newEmail = stdin.readLineSync()!;
    print('Update Address: ');
    var newAddress = stdin.readLineSync()!;

    contactService.updateContact(nameToUpdate, Contact(
      name: newName,
      phoneNum: newPhoneNum,
      email: newEmail,
      address: newAddress
    ));

    break;


    case '4':
    print('Enter name to delete contact:' );
    var nameToDelete = stdin.readLineSync()!;
    contactService.deleteContact(nameToDelete);
    break;
  
    case '5':
    print('Exiting Application...');
    exit(0);
    }

  }
}