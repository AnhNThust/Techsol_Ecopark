import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

class VerifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Image.asset(
                  "assets/images/Back2.png",
                  height: 25,
                  width: 25,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Center(
                heightFactor: 1.5,
                child: Column(
                  children: [
                    Text(
                      "\nNhập mã xác nhận\n",
                      style: TextStyle(
                        color: kBackgroundBtnColor,
                        fontSize: 21,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                      ),
                    ), // Nhãn Nhập mã xác nhận
                    Text(
                      "Gửi mã xác nhận vào gmail\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Lato",
                      ),
                    ), // Nhãn Gửi xác nhận vào gmail
                    Container(
                      width: 250,
                      height: 50,
                      color: kBackgroundBtnColor,
                      margin: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 7,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        onChanged: (value) {},
                      ),
                    ), // Ô Nhập mã xác nhận
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Xác nhận",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: "Lato",
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: kBackgroundBtnColor,
                      ),
                    ), // Nút xác nhận
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
