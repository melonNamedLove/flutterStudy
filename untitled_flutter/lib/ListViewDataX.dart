import 'package:flutter/material.dart';
import 'animal_page.dart';
import 'model.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyPage(),

    );
  }
}


class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  static List<String> animalName=[
    'ala',
    'rabbit',
    'frog',
    'dragon',
    'cat',
    'bee',
    'chameleon',
    'seal',
  ];
  static List<String> animalImagePath=[
    'assets/ala.png',
    'assets/rabbit.png',
    'assets/frog.png',
    'assets/dragon.png',
    'assets/cat.png',
    'assets/bee.png',
    'assets/chameleons.png',
    'assets/seal.png',
  ];
  static List<String> animalLocation=[
    '대명구름채',
    '한양하이츠빌',
    'sm520',
    'e편한세상',
    'meow',
    'HIVE',
    'bucheon',
    '헤윽떼윽',
  ];

  final List<Animal> animalData = List.generate(animalName.length, (index) => Animal(animalName[index],animalImagePath[index],animalLocation[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body:ListView.builder(
          itemCount: animalData.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(
                  animalData[index].name
                ),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(animalData[index].imgPath),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AnimalPage(animal:animalData[index])));
                  print(animalData[index].name);
                },
              ),
            );
          }
      )
    );
  }
}
