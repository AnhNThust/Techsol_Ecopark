import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var hei = size.height;
    // print(hei);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CusMargin),
      child: Container(
        height: size.height * 2 / 25,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(
          left: CusPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: size.width * 0.05,
          ),
        ),
      ),
    );
  }
}