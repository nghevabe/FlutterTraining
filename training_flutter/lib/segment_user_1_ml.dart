import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(SegmentUser());
}

class SegmentUser extends StatelessWidget {
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
        _titlePage(),
        _titleQuestion(),
        _contendQuestion(),
        ItemAnswer(urlImage: "assets/ic_item_1.png",contend: "Ghi chép các khoản thu, chi"),
        ItemAnswer(urlImage: "assets/ic_item_2.png",contend: "Theo dõi các khoản vay nợ"),
        ItemAnswer(urlImage: "assets/ic_item_3.png",contend: "Cắt giảm chi tiêu"),
        ItemAnswer(urlImage: "assets/ic_item_4.png",contend: "Tiết kiệm"),
        ItemAnswer(urlImage: "assets/ic_item_5.png",contend: "Quản lý tiền ở một nơi"),
        ItemAnswer(urlImage: "assets/ic_item_6.png",contend: "Mục tiêu khác"),
      ],
    );
  }
}

Widget _header() {
  return Container(
    alignment: Alignment.topLeft,
    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
    child: const Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
  );
}

Widget _titlePage() {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 32.0),
    child: const Text("Bước 1/5",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        )),
  );
}

Widget _titleQuestion() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(left: 20.0 ,top: 16.0, right: 20.0),
    child: Text("Mục tiêu tài chính hiện tại của bạn là gì?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
          color: HexColor("#1D1D1D"),
        )),
  );
}

Widget _contendQuestion() {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 20.0 ,top: 4.0, right: 20.0),
    child: Text("Chọn một mục tiêu quan trọng nhất. Bạn có thể khám phá những mục tiêu khác bất cứ lúc nào.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          color: HexColor("#1D1D1D"),
        )),
  );
}

class ItemAnswer extends StatelessWidget {
  ItemAnswer({Key? key, required this.urlImage, required this.contend})
      : super(key: key);

  final String urlImage;
  final String contend;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: HexColor("#E4E4E4"), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      margin: EdgeInsets.only(left: 20.0, top: 28.0, right: 20.0),
      padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
      child: Row(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: Image
              (image: AssetImage(urlImage)),
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0),
            child: Text(contend,
                style: TextStyle(
                  fontSize: 16.0,
                  color: HexColor("#444444"),
                )),
          )
        ],
      ),
    );
  }
}