import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/note_list_page/details_node/row_of_gate.dart';
import 'package:techsol_ecopark/templates/back_button_1.dart';

class DetailsNodePage extends StatelessWidget {
  const DetailsNodePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BackButton1()
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: CusPadding,
                  bottom: CusMargin + 8,
                ),
                child: Text(
                  "Danh sách các cổng",
                  style: TextStyle(
                    color: kBackgroundBtnColor,
                    fontSize: size.width * 0.056,
                    fontFamily: "Lato",
                  ),
                ),
              ),
              RowOfGate(nameGate: "Cổng 1",),
              RowOfGate(nameGate: "Cổng 2",),
              RowOfGate(nameGate: "Cổng 3",),
              RowOfGate(nameGate: "Cổng 4",),
              RowOfGate(nameGate: "Cổng 5",),
              RowOfGate(nameGate: "Cổng 6",),
              RowOfGate(nameGate: "Cổng 7",),
              RowOfGate(nameGate: "Cổng 8",),
              RowOfGate(nameGate: "Cổng 9",),
              RowOfGate(nameGate: "Cổng 10",)
            ],
          ),
        ),
      ),
    );
  }
}
