import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list/covid_model.dart';
import 'package:list/menu.dart';



void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<MenuModel> MenuReportList = [
    MenuModel(menu: 'กล้วยบวดชี', price: '30 บาท',pics:  'hw11-1.png'),
    MenuModel(menu: 'ทองหยิบ',price: '40 บาท',pics:'hw11-2.png'),
    MenuModel(menu: 'ลูกชุบ',price: '30 บาท',pics: 'hw11-3.png'),
    MenuModel(menu: 'บัวลอย',price: '50 บาท',pics:'hw11-4.png'),
    MenuModel(menu: 'ขนมหม้อแกง',price: '60 บาท',pics:'hw11-5.png'),
    MenuModel(menu: 'อาลัว',   price: '30 บาท',pics:'hw11-7.png'),
    MenuModel(menu: 'ขนมดอกจอก',   price: '40 บาท',pics:'hw11-8.png'),
    MenuModel(menu: 'ตะโก้',   price: '30 บาท',pics:'hw11-9.png'),
    MenuModel(menu: 'ปากริมไข่เต่า',   price: '30 บาท',pics:'hw11-10.png'),
    MenuModel(menu: 'ขนมพระพาย',   price: '50 บาท',pics:'hw11-11.png'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KHANOM THAI')),
      body:
      Column(
        children: [
          ElevatedButton(onPressed: (){} , child: const Text('LOAD DATA')),
          Expanded(
            child: ListView.builder(
                itemCount: MenuReportList.length,
                itemBuilder: (context, index) =>
                    MyCard(menu: MenuReportList[index])),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final MenuModel menu;

  const MyCard({
    Key? key,
    required this.menu,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/${menu.pics}',width: 100.0,),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(menu.menu),
                    Text(menu.price),
                  ],
                ),
              ],
            ),









          ],
        ),
      ),
    );
  }
}



