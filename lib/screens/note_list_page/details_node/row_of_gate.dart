import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';
import 'package:techsol_ecopark/screens/note_list_page/edit_gate_page/edit_gate_page.dart';

class RowOfGate extends StatefulWidget {
  const RowOfGate({
    Key key,
    this.nameGate
  }) : super(key: key);

  final String nameGate;

  @override
  _RowOfGateState createState() => _RowOfGateState();
}

class _RowOfGateState extends State<RowOfGate> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print("${widget.nameGate} is On");
    } else {
      setState(() {
        isSwitched = false;
      });
      print("${widget.nameGate} is Off");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kBackgroundBtnColor,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextButton(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.nameGate}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.053,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Hẹn giờ 1 từ 6h đến 8h",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.044,
                          fontFamily: "Lato",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditGatePage(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: size.width * 0.18,
              height: size.width * 0.1,
              alignment: Alignment.centerRight,
              child: Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
