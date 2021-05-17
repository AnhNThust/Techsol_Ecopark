import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/forgot_button.dart';
import 'components/input_field.dart';
import 'components/label_account.dart';
import 'components/label_login.dart';
import 'components/name_company.dart';
import 'components/sign_in_button.dart';
import 'components/sign_up_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_main.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              NameCompany(),
              LabelLogIn(),
              Container(
                color: Color.fromRGBO(255, 255, 255, 0.25),
                child: Column(
                  children: <Widget>[
                    LabelAccount(text: "Account :"),
                    InputField(),
                    LabelAccount(text: "Password :"),
                    InputField(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: CusPadding,
                      ),
                      child: ForgotButton(),
                    ), //Check Box and Forgot Password
                    SignInButton(), //Button Sign In
                    SignUpButton(), //Sign Up
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}