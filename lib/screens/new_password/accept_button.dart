import 'package:flutter/material.dart';

import '../../constants.dart';

class AcceptButton extends StatelessWidget {
  const AcceptButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return TextButton(
      onPressed: () {},
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: Colors.white,
          fontSize: size.width * 0.065,
          fontFamily: "Lato",
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: kBackgroundBtnColor,
      ),
    );
  }
}