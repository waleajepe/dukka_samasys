import 'package:flutter/material.dart';
import 'package:samasys/components/components.dart';
import 'package:samasys/pages/employee_profile_page.dart';
import 'package:samasys/resources/resources.dart';
import 'package:samasys/data/employees_data.dart';

class EmployeesPage extends StatefulWidget {
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
  bool isClicked = false;
  bool isPressed = false;

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
                    Text(
                      'EMPLOYEES',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 35.0),
                    ListView.builder(
                        itemCount: employees.length,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return EmployeeProfilePage(employee: employees[index]);
                                  }));
                                },
                                onLongPress: () {
                                  print('long press');
                                  setState(() {
                                    isPressed = !isPressed;
                                  });
                                },
                                child: EmployeesCard(
                                  name: employees[index].fullName,
                                  email: employees[index].email,
                                  imageUrl: employees[index].imageUrl,
                                  position: employees[index].position,
                                  phone: employees[index].phoneNumber,
                                ),
                              ),
                              isPressed
                                  ? Positioned(
                                      bottom: 25.0,
                                      right: 6.0,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            color: Palette.lighterBlack,
                                            child: IconButton(
                                              color: Palette.lightBlack,
                                              icon: Icon(Icons.edit),
                                              iconSize: 20.0,
                                              onPressed: () {
                                                setState(() {
                                                  final snackBar = SnackBar(
                                                    content: const Text(
                                                        'Error Feature not available at the moment'),
                                                    action: SnackBarAction(
                                                      textColor: Colors.red,
                                                      label: 'Error!',
                                                      onPressed: () {
                                                        // Some code to undo the change.
                                                      },
                                                    ),
                                                  );

                                                  // Find the ScaffoldMessenger in the widget tree
                                                  // and use it to show a SnackBar.
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                  print('edit');
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            color: Palette.lighterBlack,
                                            child: IconButton(
                                              color: Palette.lightBlack,
                                              icon: Icon(Icons.delete),
                                              iconSize: 20.0,
                                              onPressed: () {
                                                setState(() {
                                                  employees.removeAt(index);
                                                  print('delete');
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          );
                        })
                  ],
                )
              ]),
        ),
      )),
    );
  }
}

// name: employees[index].fullName,
// phone: employees[index].phoneNumber,
// email: employees[index].email,
// imageUrl: employees[index].imageUrl,
// position: employees[index].position,

//
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// EmployeeProfilePage(
// employee: employees[index]),
// ),
// );
// },
