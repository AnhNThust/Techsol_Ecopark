import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

import 'body.dart';

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
            // TextButton.icon(
            //   onPressed: () {},
            //   icon: Image.asset(
            //     "assets/images/Book.png",
            //     color: Colors.white,
            //     width: 40,
            //     height: 40,
            //   ),
            //   label: Text(
            //     "Node list",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 11,
            //       fontFamily: "Lato",
            //     ),
            //   ),
            // )
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
      ),
    );
  }
}

class ItemOfNavBar extends StatelessWidget {
  const ItemOfNavBar({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: CusPadding,
        right: CusPadding,
      ),
      child: Column(
        children: [
          IconButton(
            icon: Image.asset(
                image,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.034,
              fontFamily: "Lato",
            ),
          ),
        ],
      ),
    );
  }
}
