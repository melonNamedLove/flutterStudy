import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'OnBoarding.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:OnBoardingPage(
      ),
    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page')

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const OnBoardingPage())
                );},
                child: const Text('goto onBoarding screen'))
          ],
        ),
      ),
    );
  }
}
