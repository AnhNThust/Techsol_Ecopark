import 'package:flutter/material.dart';

import '../../../constants.dart';

class InputFieldPw extends StatelessWidget {
  const InputFieldPw({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: CusMargin + 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kBackgroundBtnColor,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: CusPadding,
          ),
        ),
        style: TextStyle(
          fontSize: size.width * 0.056,
        ),
      ),
    );
  }
}