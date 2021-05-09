import 'package:flutter/material.dart';

import '../../../constants.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: CusPadding,
      ),
      child: IconButton(
        icon: Image.asset("assets/images/Cancel2.png"),
        onPressed: () {},
      ),
    );
  }
}