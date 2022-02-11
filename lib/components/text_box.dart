import 'package:flutter/material.dart';
import 'package:samasys/resources/palette.dart';

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final Function validator;

  TextBox(
      {Key? key,
      required this.controller,
      required this.title,
      required this.validator})
      : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 19.0),
        ),
        Container(
          margin: EdgeInsets.only(top: 12.0, bottom: 10.0),
          decoration:
              BoxDecoration(border: Border.all(color: Palette.lightBlack)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
            child: TextFormField(
              validator: (value) {
                validator;
                return null;
              },
              controller: controller,
              style: TextStyle(
                fontSize: 18.0,
              ),
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
