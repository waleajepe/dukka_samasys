
class Employee {
  String fullName;
  String phoneNumber;
  String email;
  String position;
  int salary;
  Map borrowed;
  String imageUrl;

  //borrowed money for an Employee will be stored in a
  // Map (Key: value) for (Month: amount_borowed)


  //class constructor for Employee
   Employee({
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.position,
    required this.salary,
    required this.imageUrl,
    required this.borrowed
  });
}
