import 'package:flutter/material.dart';
import 'package:samasys/components/components.dart';
import 'package:samasys/pages/employees_page.dart';
import 'package:samasys/resources/palette.dart';

class CreateEmployeeProfile extends StatelessWidget {
  CreateEmployeeProfile({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CREATE EMPLOYEE PROFILE',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Full Name',
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Palette.lightBlack)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 2.0),
                          child: TextFormField(
                            validator: (value) {
                              //Check if Value is Empty
                              if (value == null || value.isEmpty) {
                                return 'Field cannot be empty';
                              }
                              //Check if name lenght is less than 2 characters
                              else if(value.length < 3){
                                return 'Name too short';
                              }
                              //Check name lenght greater than 25
                              else if(value.length > 25){
                                return 'Name too long';
                              }
                              return null;
                            },
                            controller: nameController,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Palette.lightBlack)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 2.0),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field cannot be empty';
                              }
                              else if(value.length != 11){
                                return 'Phone number is incorrect';
                              }
                              return null;
                            },
                            controller: phoneController,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Palette.lightBlack)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 2.0),
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field cannot be empty';
                              }
                              else if(!value.contains('@') && !value.contains('.com')){
                                return 'Invalide email';
                              }
                              return null;
                            },
                            controller: emailController,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      Text(
                        'Position',
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Palette.lightBlack)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 2.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field cannot be empty';
                              }
                              return null;
                            },
                            controller: positionController,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      Text(
                        'Salary',
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Palette.lightBlack)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 2.0),
                          child: TextFormField(
                              keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field cannot be empty';
                              }

                              return null;
                            },
                            controller: salaryController,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Account created! You are logged in',
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return EmployeesPage();
                                },
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.0,
                          margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Palette.lightBlack,
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 2.0),
                              child: Center(
                                  child: Text(
                                'SAVE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ))),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      )),
    );
  }
}
