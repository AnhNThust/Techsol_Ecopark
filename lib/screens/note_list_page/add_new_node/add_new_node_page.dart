import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/new_password/components/accept_button.dart';
import 'package:techsol_ecopark/screens/new_password/components/input_field.dart';
import 'package:techsol_ecopark/screens/register/label_in_create_account.dart';
import 'package:techsol_ecopark/templates/back_button_1.dart';

class AddNewNodePage extends StatelessWidget {
  const AddNewNodePage({Key key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: CusMargin,
                ),
                child: Center(
                  child: Text(
                    "Thêm Node",
                    style: TextStyle(
                      color: kBackgroundBtnColor,
                      fontSize: size.width * 0.057,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              LabelInCA(
                size: size,
                title: "Tên cổng :",
              ),
              Center(
                child: InputCodeVeri(
                  wid: size.width * 0.84,
                  hei: size.height * 0.085,
                  fontSi: size.width * 0.057,
                  marBottom: CusMargin + 5,
                ),
              ),
              LabelInCA(
                size: size,
                title: "ID :",
              ),
              Center(
                child: InputCodeVeri(
                  wid: size.width * 0.84,
                  hei: size.height * 0.085,
                  fontSi: size.width * 0.057,
                  marBottom: CusMargin + 5,
                ),
              ),
              LabelInCA(
                size: size,
                title: "Tọa độ :",
              ),
              Center(
                child: InputCodeVeri(
                  wid: size.width * 0.84,
                  hei: size.height * 0.085,
                  fontSi: size.width * 0.057,
                  marBottom: CusMargin + 15,
                ),
              ),
              AcceptButton(press: () {},),
            ],
          ),
        ),
      ),
    );
  }
}
