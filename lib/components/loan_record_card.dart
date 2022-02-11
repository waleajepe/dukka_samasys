import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:samasys/resources/resources.dart';
import 'package:samasys/components/components.dart';

class LoanRecordCard extends StatelessWidget {
  final String month;
  final String receivable;
  final String borrowed;
  const LoanRecordCard({
    required this.receivable,
    required this.borrowed,
    required this.month,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.0),
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
          border: Border.all(color: Palette.lighterBlack)),
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.23,
              height: 100,
              decoration:
              BoxDecoration(color: Colors.grey[200]),
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_today,
                          color: Palette.cardSubtitle),
                      Text(
                        month,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Palette.cardSubtitle,
                        ),
                      ),
                    ],
                  ))),
          SizedBox(width: 18.0),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'BORROWED:',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Palette.lightBlack),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      '#$borrowed',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Palette.lightBlack),
                    ),
                  ],
                ),
                HorizontalLine(),
                Row(
                  children: [
                    Text(
                      'RECEIVABLE:',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Palette.lightBlack),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      '#$receivable',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Palette.lightBlack),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

