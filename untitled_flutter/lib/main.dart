import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var titleList = [
    'wumpus',
    'iu',
    'hanyohan',
    'joyuri',
    '돈까쓰',
    '멜론',
    'nyan cat',
    'maple',
    'LORD VADER',
    'DEATH STAR'
  ];
  var imageList = [
    'assets/wumpus.png',
    'assets/iu.jpg',
    'assets/han.jpg',
    'assets/joyuri.jpg',
    'assets/donkatchu.jpg',
    'assets/melon.jpeg',
    'assets/nyancat.png',
    'assets/1.png',
    'assets/vader.png',
    'assets/star.png',
  ];

  var description = [
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
    '아 오늘은 7시에 일어났는데 내일은 6시에 일어나서 출근까지 해야 한다니 아침일찍 일어나는 건 너무 어렵다..',
  ];

  void showPopUp(context, title, image, description){
    showDialog(
        context : context,
        builder: (context){
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRect(
                      child: Image.asset(
                        image,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                        ),
                        textAlign: TextAlign.center,
                      ),
                
                    ),
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon:const Icon(Icons.close,),
                      label: const Text('close'),
                      
                
                
                    )
                  ],
                ),
              ),
            ),
          );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width*0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',
          style: TextStyle(
            color:Colors.grey
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
          itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              print(titleList[index]);
              showPopUp(context, titleList[index], imageList[index], description[index]);
            },
            child: Card(
              child:Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                      child:Image.asset(imageList[index])
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child:Column(
                          children:[
                            Text(titleList[index],
                            style:const TextStyle(
                              fontSize:22,
                              fontWeight:FontWeight.bold,
                              color:Colors.grey
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: width,
                              child:Text(
                                  description[index],
                              style:TextStyle(
                                fontSize: 15,
                                color: Colors.grey[500]
                              ))
                            )
                          ]
                      )),
                ],
              )
            ),
          );
          }
      ),
    );
  }
}

