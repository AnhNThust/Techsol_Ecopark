import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    Key key,
    @required this.size,
    this.urlIcon,
    this.laBel,
    this.press,
  }) : super(key: key);

  final Size size;
  final String urlIcon;
  final String laBel;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.074,
      margin: EdgeInsets.symmetric(
        vertical: CusPadding,
        horizontal: CusMargin + 25,
      ),
      alignment: Alignment.centerLeft,
      child: ElevatedButton.icon(
        onPressed: press,
        icon: Image.asset(
          urlIcon,
          width: size.width * 0.088,
          height: size.width * 0.088,
          color: kBackgroundBtnColor,
        ),
        label: Text(
          laBel,
          style: TextStyle(
            color: Colors.black,
            fontSize: size.width * 0.057,
            fontFamily: "Lato",
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)
        ),
      ),
    );
  }
}