import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    final listVal=["서산시","안양시","성연면"];
    final valselected=listVal[0];
    return MaterialApp(
        home:Scaffold(
          appBar:AppBar(
            leading:DropdownButton(
              value: valselected,
              items: listVal.map(
                      (e) => DropdownMenuItem(child: Text(e),value:e)
              ).toList() ,
              style:TextStyle(
                fontSize:30,
              ),
              iconSize:40,
              onChanged: (val){

              },
            ),


            leadingWidth: 100,
            actions: [
              Container(
                  margin:EdgeInsets.all(20),
                  child:Icon(Icons.search)
              ),
              Container(
                  margin:EdgeInsets.all(20),
                  child:Icon(Icons.menu_open)
              ),
              Container(
                  margin:EdgeInsets.all(20),
                  child:Icon(Icons.doorbell_rounded)
              ),
                    ],
            
          ),
          body:Column(


            children: [
              Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),Container(
                  width: double.infinity ,height: 150,
                  margin: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Image.asset("melon.jpeg",height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("사랑이란 멜론"),
                            Text("제라스 1100판 장인"),
                            Text("안팔음 ???원"),
                            Row(
                              children: [
                                Icon(Icons.heart_broken),
                                Text("+")
                              ],
                            ),
                          ],
                        )
                      ]

                  )
              ),

            ],

          ),





          bottomNavigationBar: BottomAppBar(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],

            ),
            ),
        ) //scaffold 상 중 하로 나눠주는 위젯
    );
  }
}
