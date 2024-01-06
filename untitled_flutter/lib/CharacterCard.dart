import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meow',

      debugShowCheckedModeBanner: false,
      home:Grade(),
    );
  }
}


class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('melon'),
        centerTitle: true,
        backgroundColor:Colors.amber[700],
        elevation: 0.0 ,
      ),
      body:Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/melon.jpeg') ,
              radius: 60.0,
            ),
                    ),
          ),
          Padding(
          padding:EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Divider(
                height:60.0,
                color:Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text('Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height:10.0,
              ),
              Text('사랑이란멜론',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Text('tier',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height:10.0,
              ),
              Text('5:5 P2',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width:10.0,
                  ),
                  Text('야옹야옹',
                    style:TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width:10.0,
                  ),
                  Text('매옹매옹',
                    style:TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width:10.0,
                  ),
                  Text('헤윽떼윽',
                    style:TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),

            ],
          ),
        ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/1.png'),
              radius :40.0,
              backgroundColor: Colors.amber[800],
            ),
          )
        ]
      ),


    );
  }
}
