import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar:AppBar(
            title: Text('야옹'),
            backgroundColor: Colors.blue,
          ),
          body:Text('ㅎㅇㅎㅇ'),
          bottomNavigationBar: BottomAppBar(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],

            ),
            ),
        ) //scaffold 상 중 하로 나눠주는 위젯
    );
  }
}
