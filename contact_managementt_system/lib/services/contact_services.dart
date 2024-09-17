import 'package:conde_prelim/models/contact_model.dart';


class ContactService {
  final List<Contact> _contacts = [];

  void addContact(Contact  contact){
    _contacts.add(contact);
    print('Contact Added: ${contact.name}');
  }

  void viewContacts(){
    if (_contacts.isEmpty){
      print('No Contacts available');
    } else {
      for (var contact in _contacts){
        print(contact);
        print('------------');
      }
    }
  }
    
  void updateContact(String name, Contact updatedContact) {
    for (var i = 0; i < _contacts.length; i++) {
      if (_contacts[i].name == name) {
        _contacts[i] = updatedContact; 
        print('Contact updated: $name'); 
        return; 
      }
    }
    print('Contact not found.'); 
  }


  void deleteContact(String name){
    _contacts.removeWhere((contact) => contact.name == name);
    print('Contact deleted: $name');
  }


}

