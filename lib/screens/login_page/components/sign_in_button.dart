import 'package:flutter/material.dart';
import 'package:techsol_ecopark/screens/main_page/main_screen.dart';

import '../../../constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        bottom: size.height * 0.01,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPageScreen(),
            ),
          );
        },
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontFamily: "Lato",
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: kBackgroundBtnColor,
        ),
      ),
    );
  }
}