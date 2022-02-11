import 'package:flutter/material.dart';
import 'package:samasys/components/components.dart';
import 'package:samasys/models/employee_model.dart';
import 'package:samasys/resources/resources.dart';
import 'package:samasys/data/employees_data.dart';

class EmployeeProfilePage extends StatelessWidget {
  final Employee employee;
  const EmployeeProfilePage({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    EmployeeCard(position: employee.position, name: employee.fullName, email: employee.email, phone: employee.phoneNumber, imageUrl: employee.imageUrl),
                    Text(
                      'LOAN RECORD',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 35.0),
                    LoanRecordCard(
                      month: 'FEB', borrowed: employee.borrowed['presentYear']['Feb'].toString(),
                      receivable: (employee.salary - employee.borrowed['presentYear']['Feb']).toString() ,),
                    LoanRecordCard(month: 'JAN', borrowed: employee.borrowed['presentYear']['Jan'].toString(),
                      receivable:  (employee.salary - employee.borrowed['presentYear']['Jan']).toString(),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                   CardSubtitle(text: '2019'),
                      HorizontalLine(width: MediaQuery.of(context).size.width*0.76)

                    ],),
                    SizedBox(height: 20.0),
                    LoanRecordCard(month: 'DEC', borrowed: employee.borrowed['2019']['Dec'].toString(),
                      receivable:  (employee.salary - employee.borrowed['2019']['Dec']).toString()
                      ,),

                  ],
                )
              ]),
        ),
      )),
    );
  }
}
