import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/note_list_page/edit_gate_page/components_of_gate.dart';
import 'package:techsol_ecopark/templates/back_button_1.dart';

import 'my_time_picker.dart';
import 'row_of_loop.dart';

class EditGatePage extends StatelessWidget {
  const EditGatePage({Key key}) : super(key: key);

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
                color: kBackgroundBtnColor,
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Hủy",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: size.width * 0.049,
                            fontFamily: "Lato",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Chỉnh sửa cổng",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.049,
                          fontFamily: "Lato",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sửa",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: size.width * 0.049,
                            fontFamily: "Lato",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //App bar Chỉnh sửa cổng
              Container(
                width: size.width,
                height: size.height * 0.32,
                // color: Colors.green,
                padding: EdgeInsets.symmetric(
                  vertical: CusPadding,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 8.4 * size.height / 100,
                              bottom: 9 * size.height / 160,
                            ),
                            child: Text(
                              "HẸN GIỜ 1",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.049,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "HẸN GIỜ 2",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.049,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      flex: 1,
                    ), //Column Hẹn Giờ
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Bắt đầu",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.049,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          MyTimePicker(), //Hẹn giờ bắt đầu 1
                          MyTimePicker(), //Hẹn giờ bắt đầu 2
                        ],
                      ),
                      flex: 1,
                    ), //Column Bắt đầu
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Kết thúc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.049,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          MyTimePicker(), //Hẹn giờ kết thúc 1
                          MyTimePicker(), //Hẹn giờ kết thúc 2
                        ],
                      ),
                      flex: 1,
                    ), //Column Kết thúc
                  ],
                ),
              ),
              ComponentsOfGate(
                text: "Tên :",
              ),
              ComponentsOfGate(
                text: "ID :",
              ),
              ComponentsOfGate(
                text: "Khu vực :",
              ),
              ComponentsOfGate(
                text: "Trạng thái :",
              ),
              RowOfLoop(size: size),
              Center(
                child: Container(
                  width: size.width * 0.405,
                  height: size.height * 0.08,
                  margin: EdgeInsets.symmetric(
                    vertical: 6.5 * size.height / 100,
                  ),
                  color: kBackgroundBtnColor,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "GỬI LỆNH",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.049,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
