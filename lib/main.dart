import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '하루일기',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, background: Colors.grey.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'mainpage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            centerTitle: true,
            title: Text("12월 25일"),
            leadingWidth: 44,
            leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child:
                    SvgPicture.asset('images/back.svg', width: 1, height: 1))),
        body: Center(
            child: Align(
          alignment: Alignment.topLeft,
          child: Stack(children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "벼루님, \n오늘 기분 어때요?",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'images/hamster.svg',
                  width: 100,
                  height: 200,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                  color: Colors.grey.shade800,
                  child: Container(
                    height: 200.0,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Text("기분",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.5)),
                          ),
                        ),
                        Row(
                          children: [],

                        )
                      ],
                    ),
                  )),
            )
          ]),
        )));
  }
}
