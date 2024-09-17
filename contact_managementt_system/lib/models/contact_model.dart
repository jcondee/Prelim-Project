
class Contact {
  final String name;
  final String phoneNum;
  final String email;
  final String address;

  Contact({
    required this.name,
    required this.phoneNum,
    required this.email,
    required this.address,
  });


  @override toString() {
    return 'Name: $name\nPhone: $phoneNum\nEmail: $email\nAddress: $address';
  }

}
