import 'package:flutter/material.dart';
import 'myPageYTX.dart';

void main(){
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.white
          )
        )
      ),
      home:MyPageYTX()
    );
  }
}
