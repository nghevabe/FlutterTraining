import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  String value = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _header(),
        _title(),
        _loginWithFacebook(),
        _loginWithGoogle(),
        _loginWithApple(),
        _titlePermission()
      ],
    );
  }
}

Widget _header(){
  return Container(
    alignment: Alignment.topLeft,
    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
    child: const Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
  );
}

Widget _title(){
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 32.0),
    child: const Text(
        "Đăng nhập",
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.black,
        )
    ),
  );
}

Widget _loginWithFacebook(){
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        border: Border.all(color: HexColor("#1877f2"),
        width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4))),
    margin: EdgeInsets.only(left: 48.0, top: 24.0, right: 48.0),
    padding: EdgeInsets.only(left: 6.0, top: 6.0, bottom: 6.0),
    child: Row(
      children: [
        const Icon(
          Icons.login,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(left: 24.0),
          child: Text(
              "Connect with Facebook",
              style: TextStyle(
                fontSize: 14.0,
                color: HexColor("#1877f2"),
              )
          ),
        )
      ],
    ),
  );
}

Widget _loginWithGoogle(){
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        border: Border.all(color: HexColor("#fd3e3e"),
            width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4))),
    margin: EdgeInsets.only(left: 48.0, top: 12.0, right: 48.0),
    padding: EdgeInsets.only(left: 6.0, top: 6.0, bottom: 6.0),
    child: Row(
      children: [
        const Icon(
          Icons.login,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(left: 24.0),
          child: Text(
              "Connect with Facebook",
              style: TextStyle(
                fontSize: 14.0,
                color: HexColor("#fd3e3e"),
              )
          ),
        )
      ],
    ),
  );
}


Widget _loginWithApple(){
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        border: Border.all(color: HexColor("#000000"),
            width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4))),
    margin: EdgeInsets.only(left: 48.0, top: 12.0, right: 48.0),
    padding: EdgeInsets.only(left: 6.0, top: 6.0, bottom: 6.0),
    child: Row(
      children: [
        const Icon(
          Icons.login,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(left: 24.0),
          child: Text(
              "Connect with Facebook",
              style: TextStyle(
                fontSize: 14.0,
                color: HexColor("#000000"),
              )
          ),
        )
      ],
    ),
  );
}

Widget _titlePermission(){
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 8.0),
    child: Text(
      "We’ll never post without your permission",
      style: TextStyle(
        fontSize: 14.0,
        color: HexColor("#848586"),
      )
    ),
  );
}

