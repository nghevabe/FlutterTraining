import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(SegmentUser2());
}

class SegmentUser2 extends StatelessWidget {
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
        ItemAnswer(
            urlImage: "assets/ic_smile_noactive.png",
            contend: "Ghi chép đầy đủ và thường xuyên"),
        ItemAnswer(
            urlImage: "assets/ic_smile2_noactive.png",
            contend: "Có ghi chép, nhưng chưa đầy đủ và thường xuyên"),
        ItemAnswer(
            urlImage: "assets/ic_sad_noactive.png",
            contend: "Đã nghĩ tới, nhưng chưa thực hiện việc ghi chép"),
        ItemAnswer(
            urlImage: "assets/ic_sad2_noactive.png",
            contend: "Chưa thực hiện việc ghi chép"),
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
    child: const Text("Bước 2/5",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        )),
  );
}

Widget _titleQuestion() {
  return Container(
    alignment: Alignment.center,
    margin:
        const EdgeInsets.only(left: 20.0, top: 16.0, right: 20.0, bottom: 60.0),
    child: Text("Bạn có thường xuyên ghi chép chi tiêu của mình không?",
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
    margin: EdgeInsets.only(left: 20.0, top: 4.0, right: 20.0, bottom: 28.0),
    child: Text(
        "Chọn một mục tiêu quan trọng nhất. Bạn có thể khám phá những mục tiêu khác bất cứ lúc nào.",
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
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
      padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
      child: Row(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: Image(image: AssetImage(urlImage)),
          ),
          Container(
            width: 100.0,
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
