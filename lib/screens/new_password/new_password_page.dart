import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/new_password/accept_button.dart';
import 'package:techsol_ecopark/templates/back_button_1.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton1(),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: CusMargin,
                  ),
                  child: Text(
                    "Mật khẩu mới\n",
                    style: TextStyle(
                      color: kBackgroundBtnColor,
                      fontSize: size.width * 0.066,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              LabelNewPw(size: size, title: "Mật khẩu mới",),
              InputFieldPw(size: size),
              LabelNewPw(size: size, title: "Xác nhận mật khẩu mới",),
              InputFieldPw(size: size),
              AcceptButton(
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelNewPw extends StatelessWidget {
  const LabelNewPw({
    Key key,
    @required this.size,
    this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: size.width * 0.05,
        fontFamily: "Lato",
      ),
    );
  }
}

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
          focusedBorder: UnderlineInputBorder(
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
