import 'package:flutter/material.dart';
import 'myPaige.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'may the force be with you',
          body: 'i am one with the force, and the force is with me',
          image: Image.asset('assets/vader.png'),
          decoration: PageDecoration(),
        ),
        PageViewModel(
          title: 'stardust',
          body: '삐융삐융',
          image: Image.asset('assets/star.png'),
          decoration: PageDecoration(),
        ),
        PageViewModel(
          title: 'R2D2',
          body: '삐리립 뽀리립',
          image: Image.asset('assets/r2.png'),
          decoration: PageDecoration(),
        ),

      ],
      done: const Text('done!'),
      onDone: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage())
        );
      },
      next: const Icon(
          Icons.arrow_forward
      ),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
      color: Colors.red,
      size:const Size(10,10),
      activeSize: const Size(22,10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
      ),
      activeColor: Colors.purple
      ),
        curve: Curves.bounceOut,
    );
  }


  PageDecoration getPageDecoration(){
    return PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        ),
        bodyTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.red
        ),
        imagePadding:EdgeInsets.only(top:40),
        pageColor: Colors.grey[900]
    );
  }
}
