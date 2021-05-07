import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/main_page/main_screen.dart';
import 'package:techsol_ecopark/screens/new_password/verify_page.dart';

import 'screens/login/input_field.dart';
import 'screens/login/label_account.dart';
import 'screens/login/label_login.dart';
import 'screens/login/my_check_box.dart';
import 'screens/login/name_company.dart';
import 'screens/login/sign_up_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
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
      ),
    );
  }
}

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

class ForgotButton extends StatelessWidget {
  const ForgotButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // print("${size.height}");

    return Container(
      margin: EdgeInsets.only(
        top: size.height * 0.015, //10
        bottom: size.height * 0.022, //15
      ),
      child: Row(
        children: <Widget>[
          MyCheckBox(),
          Text(
            "Remember me",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.05, //16
              fontFamily: "Lato",
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerifyPage(),
                  ));
            },
            child: Text(
              "Forgot Password",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.05, //16
                fontFamily: "Lato",
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
