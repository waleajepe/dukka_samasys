import 'package:flutter/material.dart';
import 'package:samasys/resources/resources.dart';
import 'package:samasys/components/components.dart';

class EmployeeCard extends StatefulWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String imageUrl;

  const EmployeeCard({
    Key? key,
    required this.position,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<EmployeeCard> createState() => _EmployeeCardState();
}

class _EmployeeCardState extends State<EmployeeCard> {


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 22.0),
        width: double.infinity,
        height: 140.0,
        decoration:
            BoxDecoration(border: Border.all(color: Palette.lighterBlack)),
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.imageUrl,
                  )),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
            ),
          ),
          SizedBox(width: 18.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Palette.lightBlack),
              ),
              SizedBox(height: 10.0),
              CardSubtitle(text: widget.position),
              SizedBox(height: 6.0),
              CardSubtitle(text: widget.phone),
              SizedBox(height: 6.0),
              CardSubtitle(text: widget.email)
            ],
          )
        ]));
  }
}
