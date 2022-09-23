import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirst());
}

class MyFirst extends StatelessWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'WHAT TO EAT TODAY?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: MyEat(),
      ),
    );
  }
}

class MyEat extends StatefulWidget {
  const MyEat({Key? key}) : super(key: key);

  @override
  State<MyEat> createState() => _MyEatState();
}

class _MyEatState extends State<MyEat> {
  int soupNo = 1;
  int foodNo = 1;
  int sweetNo = 1;

  List<String> soupName = [
    'Mercimek Çorbası',
    'Tarhana ',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba',
  ];
  List<String> foodName = [
    'Karnıyarık',
    'Mantı ',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık',
  ];
  List<String> sweetName = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazan Dibi',
    'Dondurma',
  ];

  void yemekleriyenile() {
    setState(() {
      soupNo = Random().nextInt(5) + 1;
      foodNo = Random().nextInt(5) + 1;
      sweetNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: yemekleriyenile,
                  child: Image.asset('android/assets/corba_$soupNo.jpg')),
            ),
          ),
          Text(
            soupName[soupNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  onPressed: yemekleriyenile,
                  child: Image.asset('android/assets/yemek_$foodNo.jpg')),
            ),
          ),
          Text(
            foodName[foodNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  onPressed: yemekleriyenile,
                  child: Image.asset('android/assets/tatli_$sweetNo.jpg')),
            ),
          ),
          Text(
            sweetName[sweetNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
