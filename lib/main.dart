import 'package:flutter/material.dart';
import 'package:samasys/pages/create_employee_profile.dart';
import 'package:samasys/pages/employee_profile_page.dart';
import 'package:samasys/pages/employees_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: CreateEmployeeProfile(),
    );
  }
}
