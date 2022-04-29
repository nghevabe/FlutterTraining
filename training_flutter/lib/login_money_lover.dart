import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'segment_user_1_ml.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLoginPage(title: 'Flutter Demo Home Page'),
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
          title: Text('Flutter TextField Example'),
        ),
        body: LoginBody());
  }
}

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);

  static String userName = "";
  static String userPass = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _header(),
        _title(),
        _itemConnectFB(),
        _itemConnectGG(),
        _itemConnectApple(),
        contend_permission(),
        _itemOrLine(),
        _itemFormInput(),
        ItemButtonLogin(),
        _itemBottom()
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

Widget _title() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
    child: const Text("Đăng nhập",
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.black,
        )),
  );
}

Widget contend_permission(){
  return Container(
    padding: EdgeInsets.only(left: 24.0, right: 24.0),
    margin: EdgeInsets.only(top: 8.0),
    alignment: Alignment.center,
    child: const Text("Chúng tôi sẽ không đăng nhập thông tin mà không có sự cho phép của bạn",
      textAlign: TextAlign.center,),
  );
}

Widget _itemOrLine(){
  return Container(
      margin: EdgeInsets.only(top: 32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
                margin: EdgeInsets.only(right: 4.0),
                color: Colors.grey,
                height: 1
            ),
          ),
          Text("HOẶC"),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(left: 4.0),
                color: Colors.grey,
                height: 1
            ),
          ),
        ],
      )
  );

}

class ItemButtonLogin extends StatelessWidget {
  ItemButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Container(
    decoration: BoxDecoration(
    color: Colors.green,
        border: Border.all(
          color: Colors.green,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6))
    ),
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
    margin: EdgeInsets.only(left: 32.0, top: 32.0, right: 32.0),
    child: Text('ĐĂNG NHẬP',
    style: TextStyle(
    color: Colors.red, // <-- Change this
    )),
    ), onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SegmentUser()),
      );
      print(LoginBody.userName + " - " + LoginBody.userPass);}
      ,);

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

Widget _itemFormInput() {

  return Container(
    margin: EdgeInsets.only(left: 32.0, top: 16.0, right: 32.0),
    child: Column(
      children: <Widget>[
        Container(
            child: TextFormField(
              onChanged: (text) {
                LoginBody.userName = text;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
              ),
            )),

        Container(
            margin: EdgeInsets.only(top: 16.0),
            child: TextFormField(
              onChanged: (text) {
                LoginBody.userPass = text;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Mật khẩu',
                labelStyle: TextStyle(
                  color: Colors.green, // <-- Change this
                ),
              ),
            )),
      ],
    ),
  );

}

Widget _itemConnectFB() {
  return Container(
    padding: const EdgeInsets.only(left: 12.0 ,top: 8.0, bottom: 8.0),
    margin: const EdgeInsets.only(left: 32.0, top: 8.0, right: 32.0, bottom: 8.0),
    decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6))
    ),
    child: Row(
      children: <Widget>[
        // Container(
        //   width: 21,
        //   height: 21,
        //   child: Image.asset('assets/fb_ic.png'),
        // ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 16.0),
            child: const Text("KẾT NÓI VỚI FACEBOOK",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.lightBlueAccent,
                )),
          ),
        )
      ],
    ),
  );
}

Widget _itemConnectGG() {
  return Container(
    padding: const EdgeInsets.only(left: 12.0 ,top: 8.0, bottom: 8.0),
    margin: const EdgeInsets.only(left: 32.0, top: 8.0, right: 32.0, bottom: 8.0),
    decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6))
    ),
    child: Row(
      children: <Widget>[
        // Container(
        //   width: 21,
        //   height: 21,
        //   child: Image.asset('assets/gg_ic.png'),
        // ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 16.0),
            child: Text("KẾT NÓI VỚI GOOGLE",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.redAccent,
                )),
          ),
        )
      ],
    ),
  );
}

Widget _itemConnectApple() {
  return Container(
    padding: const EdgeInsets.only(left: 12.0 ,top: 8.0, bottom: 8.0),
    margin: const EdgeInsets.only(left: 32.0, top: 8.0, right: 32.0, bottom: 8.0),
    decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6))
    ),
    child: Row(
      children: <Widget>[
        // Container(
        //   width: 21,
        //   height: 21,
        //   child: Image.asset('assets/apple_ic.png'),
        // ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 16.0),
            child: Text("KẾT NÓI VỚI APPLE",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                )),
          ),
        )
      ],
    ),
  );
}

class ItemConnect extends StatelessWidget {
  ItemConnect({Key? key, required this.contend, required this.url}) : super(key: key);

  final String contend;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0 ,top: 8.0, bottom: 8.0),
      margin: const EdgeInsets.only(left: 32.0, top: 8.0, right: 32.0, bottom: 8.0),
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6))
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 21,
            height: 21,
            child: Image.asset(url),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 16.0),
              child: Text(contend),
            ),
          )
        ],
      ),
    );
  }

}