import 'package:flutter/material.dart';

void main() {
  runApp(const meow());
}

class meow extends StatelessWidget {
  const meow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(),
        body: item()
      ),
    );
  }
}


class item extends StatelessWidget {
  const item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child:Text('안녕')
    );
  }
}
