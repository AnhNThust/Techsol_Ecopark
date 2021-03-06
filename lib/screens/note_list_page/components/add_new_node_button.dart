import 'package:flutter/material.dart';
import 'package:techsol_ecopark/screens/note_list_page/add_new_node/add_new_node_page.dart';

import '../../../constants.dart';

class AddNewNodeButton extends StatelessWidget {
  const AddNewNodeButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.55,
      height: size.height * 0.08,
      color: kBackgroundBtnColor,
      margin: EdgeInsets.symmetric(
        vertical: CusMargin + 7,
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          print("Clicked Thêm Node Mới");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewNodePage(),
            ),
          );
        },
        icon: Image.asset(
          "assets/images/Add.png",
          color: Colors.white,
          width: size.width * 0.07,
        ),
        label: Text(
          "Thêm Node mới",
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.05,
            fontFamily: "Lato",
          ),
        ),
      ),
    );
  }
}