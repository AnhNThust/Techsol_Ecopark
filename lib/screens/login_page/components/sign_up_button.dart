import 'package:flutter/material.dart';
import 'package:techsol_ecopark/screens/register/create_new%20_account.dart';

import '../../../constants.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var wid = size.width;
    print(wid);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account ?",
          style: TextStyle(
            color: Color(0xFF343F4B),
            fontSize: size.width * 0.05, //16
            fontFamily: "Lato",
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateNewAccount(),
                )
            );
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: kBackgroundBtnColor,
              fontSize: size.width * 0.05, //16
              fontFamily: "Lato",
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}