import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techsol_ecopark/constants.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.35,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.31,
                    padding: EdgeInsets.only(
                      left: CusMargin + 5,
                      right: CusMargin + 5,
                      top: CusMargin + 15,
                    ),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background1.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.69,
                          height: size.height * 0.1,
                          // color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: CusPadding,
                                ),
                                child: Text(
                                  "SEUNGRI",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.06,
                                    fontFamily: "Lato",
                                  ),
                                ),
                              ),
                              Text(
                                "Seungri.bigbang@gmail.com",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.044,
                                  fontFamily: "Lato",
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Spacer(),
                        Container(
                          width: size.width * 0.178,
                          height: size.width * 0.178,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.09),
                            color: Color(0xFFE5E9F2),
                          ),
                          padding: EdgeInsets.all(CusMargin),
                          child: Image(
                            image: AssetImage("assets/images/Icon_Smile.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: size.height * 0.09,
                      margin: EdgeInsets.symmetric(
                        horizontal: CusPadding * 4,
                      ),
                      color: kBackgroundBtnColor,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Quản lý tài khoản",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.057,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MyElevatedButton(
              size: size,
              urlIcon: "assets/images/Cancel1.png",
              laBel: "Chỉnh sửa mật khẩu",
              press: () {},
            ),
            MyElevatedButton(
              size: size,
              urlIcon: "assets/images/Cancel1.png",
              laBel: "Chỉnh sửa tên",
              press: () {},
            ),
            MyElevatedButton(
              size: size,
              urlIcon: "assets/images/Zoom_in.png",
              laBel: "Thêm tài khoản phụ",
              press: () {},
            ),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.08,
              color: kBackgroundBtnColor,
              margin: EdgeInsets.symmetric(
                vertical: CusPadding,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.057,
                    fontFamily: "Lato",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    Key key,
    @required this.size,
    this.urlIcon,
    this.laBel,
    this.press,
  }) : super(key: key);

  final Size size;
  final String urlIcon;
  final String laBel;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.074,
      margin: EdgeInsets.symmetric(
        vertical: CusPadding,
      ),
      // padding: EdgeInsets.symmetric(
      //   horizontal: CusPadding,
      // ),
      child: ElevatedButton.icon(
        onPressed: press,
        icon: Image.asset(
          urlIcon,
          width: size.width * 0.088,
          height: size.width * 0.088,
          color: kBackgroundBtnColor,
        ),
        label: Text(
          laBel,
          style: TextStyle(
            color: Colors.black,
            fontSize: size.width * 0.057,
            fontFamily: "Lato",
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)
        ),
      ),
    );
  }
}
