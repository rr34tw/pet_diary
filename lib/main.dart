import 'package:flutter/material.dart';
import 'splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // The root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Diary', // 開啟所有app管理時會看到
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false, // 去除Debug標誌
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '歡迎來到寵物日記',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
