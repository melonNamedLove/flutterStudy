import  'package:flutter/material.dart';

class myPageMQ extends StatefulWidget {
  const myPageMQ({super.key});

  @override
  State<myPageMQ> createState() => _MyPageState();
}

class _MyPageState extends State<myPageMQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('mediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('width'+
                MediaQuery.of(context).size.width.toString()
            ),Text('height'+
                MediaQuery.of(context).size.height.toString()
            ),Text('aspect ratio'+
                MediaQuery.of(context).size.aspectRatio.toString()
            ),
          ],
        ),
      ),
    );
  }
}
