import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

import 'body.dart';
import 'templates/item_nav_bar.dart';

class MainPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background2.jpeg"),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kBackgroundBtnColor.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          children: [
            ItemOfNavBar(
              image: "assets/images/Book.png",
              title: "Node list",
            ),
            Spacer(),
            ItemOfNavBar(
              image: "assets/images/Star.png",
              title: "Trạng thái",
            ),
            Spacer(),
            ItemOfNavBar(
              image: "assets/images/Person1.png",
              title: "Tài khoản",
            ),
          ],
        ),
      ), //Navigator Bar
    );
  }
}


