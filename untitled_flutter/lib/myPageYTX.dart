import 'package:flutter/material.dart';
import 'package:untitled_flutter/responsive/desktop_body.dart';
import 'package:untitled_flutter/responsive/mobile_body.dart';
import 'package:untitled_flutter/responsive/responsive_layout.dart';

class MyPageYTX extends StatefulWidget {
  const MyPageYTX({super.key});

  @override
  State<MyPageYTX> createState() => _MyPageYTXState();
}

class _MyPageYTXState extends State<MyPageYTX> {
  @override
  Widget build(BuildContext context) {

    // final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: currentWidth<600 ? Colors.deepPurple[300] : Colors.red,
      // body:Center(
      //   child: Text(currentWidth.toString()),
      // )
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
