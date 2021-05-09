import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

import 'components/add_new_node_button.dart';
import 'components/my_switch.dart';
import 'components/search_box.dart';

class MyNotelistPage extends StatelessWidget {
  const MyNotelistPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: CusMargin + 5,
                  ),
                  child: Text(
                    "Note list",
                    style: TextStyle(
                      color: kBackgroundBtnColor,
                      fontSize: size.width * 0.066,
                    ),
                  ),
                ), // Label "Note list"
                SearchBox(size: size), // Search Box
                Container(
                  height: size.height * 0.42,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: kBackgroundBtnColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MySwitch(nameNode: "Node 1",),
                        MySwitch(nameNode: "Node 2",),
                        MySwitch(nameNode: "Node 3",),
                        MySwitch(nameNode: "Node 4",),
                        MySwitch(nameNode: "Node 5",),
                        MySwitch(nameNode: "Node 6",),
                      ],
                    ),
                  ),
                ),
                AddNewNodeButton(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
//   height: size.height * 0.1,
//   color: Colors.green,
//   child: Row(
//     children: [
//       Align(
//         child: Text(
//           "Node 1",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: size.width * 0.053,
//             fontFamily: "Lato",
//           ),
//         ),
//         alignment: Alignment.topLeft,
//       ),
//       Align(
//         alignment: Alignment.bottomCenter,
//         child: Text(
//           "ID, tọa độ, trạng thái",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: size.width * 0.044,
//             fontFamily: "Lato",
//           ),
//         ),
//       ),
//       MySwitch(),
//     ],
//   ),
// ),
