import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({Key key}) : super(key: key);

  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay _time = TimeOfDay(hour: 8, minute: 15);

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.248,
      height: size.height * 0.08,
      margin: EdgeInsets.only(
        top: 1.8 * size.height / 100,
        bottom: 1.3 * size.height / 100,
      ),
      // color: kBackgroundBtnColor,
      child: ElevatedButton(
        onPressed: _selectTime,
        child: Text(
          "${_time.hour} : ${_time.minute}",
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.049,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kBackgroundBtnColor),
        ),
      ),
    );
  }
}
