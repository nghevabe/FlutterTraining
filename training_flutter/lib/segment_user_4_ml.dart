import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_lover_flutter/segment_summary_ml.dart';

import 'segment_user_3_ml.dart';

class SegmentUser4 extends StatelessWidget {
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
            contend: "Thường xuyên đặt Ngân sách cho các khoản chi tiêu"),
        ItemAnswer(
            urlImage: "assets/ic_smile2_noactive.png",
            contend: "Có đặt Ngân sách chi tiêu, nhưng chưa đều đặn"),
        ItemAnswer(
            urlImage: "assets/ic_sad_noactive.png",
            contend: "Đã biết tới, nhưng chưa đặt Ngân sách chi tiêu bao giờ"),
        ItemAnswer(
            urlImage: "assets/ic_sad2_noactive.png",
            contend: "Chưa biết Ngân sách là gì"),
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
    child: const Text("Bước 4/4",
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
    child: Text("Bạn có đặt Ngân sách cho các khoản chi tiêu không?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
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
            MaterialPageRoute(builder: (context) => SegmentSummary()),
          );
        }
        );
  }
}
