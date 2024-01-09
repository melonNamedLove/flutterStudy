import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Mobile')
      ),
      backgroundColor: Colors.blueAccent[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              color : Colors.blueAccent[400],

            ),
          ),
          
          ListView.builder(
            itemCount:10,
            itemBuilder: (context, index){
              return Container(
                color: Colors.blueAccent[300],
                height: 120,
              );
            },

          ),
        ],
      ),
    );
  }
}
