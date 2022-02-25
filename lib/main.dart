import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list/covid_model.dart';



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
        primarySwatch: Colors.amber,
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

  final List<CovidModel> covidReportList = [
    CovidModel(date: 'lalala_LEO', mentter: 'lalala_LUCA',caption: 'BFF',comment: 'WOW',avatar: 'leo.png',feed:  'leo1.png'),
    CovidModel(date: 'lalala_LUCA',  mentter: 'lalalal_lisa', caption: 'สวัสดีปีใหม่',comment: 'Happy New Year',avatar:'luca1.png',feed:'luca.png'),
    CovidModel(date: 'lalala_LILY',   mentter: 'lalala_LUCA',caption: ':)',comment: 'Mylove',avatar: 'lily.png',feed: 'lily1.png'),
    CovidModel(date: 'lalala_LOUIS',   mentter: 'lalala_LEGO',caption: 'เซลฟี่',comment: 'bro!',avatar: 'louis.png',feed:'louis1.png'),
    CovidModel(date: 'lalala_LEGO',   mentter: 'lalala_LOUIS',caption: 'ใครปิดไฟ!',comment: 'เจ้าแมวโง่',avatar: 'lego.png',feed:'lego1.png'),
    CovidModel(date: 'lalala_LOVE',   mentter: 'lalala_LEGO',caption: 'มามี๊',comment: 'ไม่ๆๆๆ',avatar: 'love1.jpg',feed:'love.png'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('lalala_Lfamily')),
      body: ListView.builder(
          itemCount: covidReportList.length,
          itemBuilder: (context, index) =>
              MyCard(covid: covidReportList[index])),
    );
  }
}

class MyCard extends StatelessWidget {
  final CovidModel covid;

  const MyCard({
    Key? key,
    required this.covid,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/${covid.avatar}'),),
                SizedBox(width: 20.0,),
                Text(covid.date),
                Expanded(child: IconButton(onPressed:(){}, icon: Icon(Icons.more_vert),alignment: Alignment.topRight,)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Expanded(child: Image.asset('assets/images/${covid.feed}'))],
            ),
            Container(height: 20.0,),

            Row(
              children: [
                Expanded(
                    child: Text(covid.caption))
              ],
            ),
            Container(height: 20.0,),
            Column(
              children: [
                Row(
                  children: [


                    Text(covid.mentter,style: TextStyle(
                      color: Colors.amber,
                    ),),
                    Text(covid.comment),
                  ],
                ),
              ],
            ),

               Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                      Expanded(
                        child: Container(height: 30.0,
                          child: TextField(decoration: InputDecoration(hintText: 'Add comment'),
                          ),),
                      )
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



