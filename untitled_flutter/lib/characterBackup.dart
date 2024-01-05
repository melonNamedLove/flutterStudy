import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',

      home:MyCard(),
    );
  }
}


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('정석현'),
          centerTitle: true,
          backgroundColor:Colors.redAccent,
          elevation: 0.0 ,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
        )


    );
  }
}
