import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

import 'my_header.dart';
import '../templates/status_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CurrentUser(),
          TableInfo(),
        ],
      ),
    );
  }
}

class TableInfo extends StatelessWidget {
  const TableInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.62,
      margin: EdgeInsets.only(
        top: CusPadding,
      ),
      color: kBackgroundBtnColor,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusRow(
            size: size,
            title: "Gateway :",
            myHeight: size.height * 0.075,
            myWidth: size.width * 0.7,
          ),
          StatusRow(
            size: size,
            title: "Server :",
            myHeight: size.height * 0.075,
            myWidth: size.width * 0.7,
          ),
          StatusRow(
            size: size,
            title: "Độ ẩm :",
            myHeight: size.height * 0.075,
            myWidth: size.width * 0.7,
          ),
          StatusRow(
            size: size,
            title: "Nhiệt độ :",
            myHeight: size.height * 0.075,
            myWidth: size.width * 0.7,
          ),
          StatusRow(
            size: size,
            title: "Không khí :",
            myHeight: size.height * 0.075,
            myWidth: size.width * 0.7,
          ),
        ],
      ),
    );
  }
}




