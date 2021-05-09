import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

class MyNotelistPage extends StatelessWidget {
  const MyNotelistPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Note list",
                style: TextStyle(
                  color: kBackgroundBtnColor,
                  fontSize: size.width * 0.066,
                ),
              ),
              Row(
                children: [
                  TextField(),
                  IconButton(
                    icon: Image.asset(
                      "assets/images/Search.png",
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              MySwitch(),
            ],
          ),
        ),
      ),
    );
  }
}

class MySwitch extends StatefulWidget {
  const MySwitch({
    Key key,
    })
      : super(key: key);


  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isSwitched = false;
  String textValue = "Button is Off";

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = "Button is On";
      });
      print("Button is On");
    } else {
      setState(() {
        isSwitched = false;
        textValue = "Button is Off";
      });
      print("Button is Off");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: size.width * 0.18,
          height: size.width * 0.1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
          ),
        ),
      ],
    );
  }
}

