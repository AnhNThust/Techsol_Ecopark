import 'package:flutter/material.dart';

import '../../constants.dart';

class LabelInCA extends StatelessWidget {
  const LabelInCA({
    Key key,
    @required this.size,
    this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: CusPadding,
        left: CusMargin + 10,
        bottom: CusPadding - 5,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: size.width * 0.057,
          fontFamily: "Lato",
        ),
      ),
    );
  }
}