import 'package:flutter/material.dart';
class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Desktop')
      ),
      backgroundColor: Colors.blueAccent[200],
    );
  }
}