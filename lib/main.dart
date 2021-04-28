import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

import 'screens/login/input_field.dart';
import 'screens/login/label_account.dart';
import 'screens/login/label_login.dart';
import 'screens/login/my_check_box.dart';
import 'screens/login/name_company.dart';

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
                          right: 10,
                        ),
                        child: Row(
                          children: <Widget>[
                            MyCheckBox(),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "Lato",
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Lato",
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), //Check Box and Forgot Password
                      TextButton(
                        onPressed: () {},
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
                      ), //Button Sign In
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account ?",
                            style: TextStyle(
                              color: Color(0xFF343F4B),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: kBackgroundBtnColor,
                                fontSize: 16,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ), //Sign Up
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











