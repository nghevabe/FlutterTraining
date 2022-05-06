import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'segment_user_3_ml.dart';

void main() {
  runApp(SegmentSummary());
}

class SegmentSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLoginPage(title: 'Flutter Segment User'),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  MyLoginPage({Key? key, required this.title}) : super(key: key);

  final String title;
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title),
        ),
        body: LoginBody());
  }
}

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);

  String value = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _iconHeader(),
        _titlePage(),
        _titleQuestion(),
        _titleContent(),
        _bodySummary(),
        ItemButtonBottom()
      ],
    );
  }
}

Widget _iconHeader() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(left: 20.0, top: 80.0),
    child: Image(
      image: AssetImage("assets/ic_target.png"),
      width: 40,
      height: 40,
    ),
  );
}


Widget _titlePage() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(left: 20.0, top: 2.0),
    child: const Text("Kế hoạch của bạn đã sẵn sàng",
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.black,
        )),
  );
}

Widget _titleQuestion() {
  return Container(
    alignment: Alignment.centerLeft,
    margin:
    const EdgeInsets.only(left: 20.0, top: 16.0),
    child: Text("Mục tiêu chính của bạn là",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: HexColor("#1D1D1D"),
        )),
  );
}

Widget _titleContent() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.only(left: 20.0, top: 2.0),
    child: Text("Ghi chép các khoản thu chi",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: HexColor("#2DB84C"),
        )),
  );
}

Widget _bodySummary() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
    padding: EdgeInsets.only(bottom: 18.0),
    decoration: BoxDecoration(
        color: HexColor("#F4F6F8"),
        borderRadius: BorderRadius.all(Radius.circular(16))),
    child: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 16.0, top: 14.0),
          child: Text("Ngoài mục tiêu trên, kế hoạch này sẽ giúp bạn:",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
                color: HexColor("#1D1D1D"),
              )),
        ),
        ItemPlan(contend: "Có cái nhìn tổng quan về tài chính"),
        ItemPlan(contend: "Duy trì thói quen ghi chép chi tiêu"),
        ItemPlan(contend: "Chi tiêu thông minh với Ngân sách "),
        ItemPlan(contend: "Đạt được các mục tiêu tài chính ngắn hạn và dài hạn "),
      ],

    ),
  );

}

class ItemButtonBottom extends StatelessWidget {
  ItemButtonBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.all(Radius.circular(24))),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
        margin: EdgeInsets.only(left: 32.0, top: 32.0, right: 32.0),
        child: Text('Hoàn Thành',
            style: TextStyle(
              color: Colors.white, // <-- Change this
            )),
      ),
    );
  }
}

Widget _itemBottom() {
  return Container(
    margin: EdgeInsets.only(left: 42.0, top: 32.0, right: 42.0),
    child: Row(
      children: <Widget>[
        Expanded(child: Container(
          alignment: Alignment.centerLeft,
          child: Text("Đăng ký",
              style: TextStyle(
                color: Colors.green,
              )),
        )),
        Expanded(child: Container(
          alignment: Alignment.centerRight,
          child: Text("Quên mật khẩu?",
              style: TextStyle(
                color: Colors.green,
              )),
        )),
      ],
    ),
  );
}

class ItemPlan extends StatelessWidget {
  ItemPlan({Key? key, required this.contend})
      : super(key: key);

  final String contend;

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          child: Row(
            children: [
              Container(
                width: 20.0,
                height: 20.0,
                child: Image(image: AssetImage("assets/ic_check_green.png")),
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.0),
                    child: Text(contend,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: HexColor("#444444"),
                        )),
                  ))
            ],
          ),
        );

  }
}

class ItemAnswer extends StatelessWidget {
  ItemAnswer({Key? key, required this.urlImage, required this.contend})
      : super(key: key);

  final String urlImage;
  final String contend;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: HexColor("#E4E4E4"), width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
          padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                child: Image(image: AssetImage(urlImage)),
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.0),
                    child: Text(contend,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: HexColor("#444444"),
                        )),
                  ))
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegmentUser3()),
          );
        });
  }
}
