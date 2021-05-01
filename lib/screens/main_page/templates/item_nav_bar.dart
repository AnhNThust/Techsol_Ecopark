import 'package:flutter/material.dart';

import '../../../constants.dart';

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