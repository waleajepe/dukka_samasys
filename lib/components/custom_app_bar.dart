import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.view_headline,
              size: 40.0,
            ),
            SizedBox(
              height: 40,
              child: VerticalDivider(
                color: Colors.black26,
                thickness: 2,
                indent: 5,
                endIndent: 0,
                width: 20,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'SAMASYS',
                  style: TextStyle(letterSpacing: 20.0, fontSize: 30.0),
                ),
                Text('combat salary fraud')
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          height: 2.0,
          thickness: 2.0,
          color: Colors.black26,
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
