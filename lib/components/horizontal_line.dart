import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double width;
  const HorizontalLine({
    this.width= 200.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Divider(
        height: 20.0,
        color: Colors.black26,
      ),
    );
  }
}
