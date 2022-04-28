import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyWalletInfoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyWalletInfoPage extends StatelessWidget {
  MyWalletInfoPage({Key? key, required this.title}) : super(key: key);

  final String title;
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Flutter TextField Example'),
        ),
        body: WalletInfoBody());
  }
}

class WalletInfoBody extends StatefulWidget {
  WalletInfoBody({Key? key}) : super(key: key);

  @override
  _WalletInfoState createState() {
    return new _WalletInfoState();
  }
}

class _WalletInfoState extends State<WalletInfoBody> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(left: 16),
                  child: _itemWallet1(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(right: 12),
                  child: _itemWallet2(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(left: 16),
                  child: _itemWallet3(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(right: 12),
                  child: _itemWallet4(),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 16,top: 20),
            alignment: Alignment.centerLeft,
            child: const Text("Ví là gì",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                )),
          ),

          Container(
            margin: EdgeInsets.only(left: 16,top: 16,right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 8),
                  child: SvgPicture.asset('assets/ic_content_1.svg'),
                ),
                Expanded(
                  child: Text("Ví đại diện cho nguồn tiền của bạn. Như tiền mặt, tài khoản ngân hàng, thẻ tín dụng, mục tiêu tiết kiệm, v.v",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: HexColor("#7E7E7E"),
                      )),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 16,top: 16,right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 8),
                  child: SvgPicture.asset('assets/ic_content_2.svg'),
                ),
                Expanded(
                  child: Text("Trong ví, bạn có thể ghi lại giao dịch hàng ngày để hiểu hơn về tài chính của mình.",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: HexColor("#7E7E7E"),
                      )),
                )
              ],
            ),
          ),

          Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ItemBottomButton(),
              )
          ),

        ],
      ),

    );
  }
}

Widget _itemWallet1() {
  return Container(
    width: 156,
    height: 104,
    decoration: BoxDecoration(
        color: HexColor("#2DB84C"),
        borderRadius: BorderRadius.all(Radius.circular(8))),
    margin: const EdgeInsets.only(top: 16.0, right: 16.0),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              width: 92,
              margin: EdgeInsets.only(left: 16, top:10),
              child: const Text("Basic Wallet",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 8, right: 8),
          child: SvgPicture.asset('assets/ic_help.svg'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 2, bottom: 2),
          child: SvgPicture.asset('assets/ic_wallet_1.svg'),
        )
      ],
    ),
    // child: SvgPicture.asset('assets/ic_close.svg'),
  );
}

Widget _itemWallet2() {
  return Container(
    width: 156,
    height: 104,
    decoration: BoxDecoration(
        color: HexColor("#21D6AA"),
        borderRadius: BorderRadius.all(Radius.circular(8))),
    margin: const EdgeInsets.only(top: 16.0, right: 16.0),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              width: 92,
              margin: EdgeInsets.only(left: 16, top:10),
              child: const Text("Linked Wallet",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 8, right: 8),
          child: SvgPicture.asset('assets/ic_help.svg'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 2, bottom: 2),
          child: SvgPicture.asset('assets/ic_linked_wallet.svg'),
        )
      ],
    ),
    // child: SvgPicture.asset('assets/ic_close.svg'),
  );
}

Widget _itemWallet3() {
  return Container(
    width: 156,
    height: 104,
    decoration: BoxDecoration(
        color: HexColor("#EF549B"),
        borderRadius: BorderRadius.all(Radius.circular(8))),
    margin: const EdgeInsets.only(top: 16.0, right: 16.0),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              width: 92,
              margin: EdgeInsets.only(left: 16, top:10),
              child: const Text("Credit Wallet",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 8, right: 8),
          child: SvgPicture.asset('assets/ic_help.svg'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 2, bottom: 2),
          child: SvgPicture.asset('assets/ic_wallet_credit.svg'),
        )
      ],
    ),
    // child: SvgPicture.asset('assets/ic_close.svg'),
  );
}

Widget _itemWallet4() {
  return Container(
    width: 156,
    height: 104,
    decoration: BoxDecoration(
        color: HexColor("#F25A5A"),
        borderRadius: BorderRadius.all(Radius.circular(8))),
    margin: const EdgeInsets.only(top: 16.0, right: 16.0),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              width: 92,
              margin: EdgeInsets.only(left: 16, top:10),
              child: const Text("Goal Wallet",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 8, right: 8),
          child: SvgPicture.asset('assets/ic_help.svg'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 2, bottom: 2),
          child: SvgPicture.asset('assets/ic_wallet_goal.svg'),
        )
      ],
    ),
    // child: SvgPicture.asset('assets/ic_close.svg'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ItemBottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
      margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(32))),
      child: TextButton(
        onPressed: () {
        },
        child: Text('Subscribe Now',
            style: TextStyle(
              fontSize: 16.0,
              height: 1.4,
              color: HexColor("#FFFFFF"),
            )),
      ),
    );
  }


}