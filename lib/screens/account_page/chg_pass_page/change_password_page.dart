import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/new_password/components/accept_button.dart';
import 'package:techsol_ecopark/screens/new_password/components/input_field_password.dart';
import 'package:techsol_ecopark/screens/new_password/components/label_new_password.dart';
import 'package:techsol_ecopark/templates/back_button_1.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key key}) : super(key: key);

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
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: CusPadding,
                  bottom: CusMargin + 12,
                ),
                child: Text(
                  "THAY ĐỔI MẬT KHẨU",
                  style: TextStyle(
                    color: kBackgroundBtnColor,
                    fontSize: size.width * 0.057,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              LabelNewPw(size: size, title: "Mật khẩu cũ:",),
              InputFieldPw(size: size),
              LabelNewPw(size: size, title: "Mật khẩu mới:",),
              InputFieldPw(size: size),
              LabelNewPw(size: size, title: "Xác nhận mật khẩu mới:",),
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
