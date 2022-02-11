import 'package:flutter/material.dart';

import 'package:samasys/resources/resources.dart';

class CardSubtitle extends StatelessWidget {
  final String text;
  const CardSubtitle({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Palette.cardSubtitle, fontSize: 17.0),
    );
  }
}