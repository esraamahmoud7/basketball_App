import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPoints());
}
class BasketballPoints extends StatefulWidget
{
  const BasketballPoints({super.key});

  @override
  State<BasketballPoints> createState()=> _BasketballPointsState();
}
class _BasketballPointsState extends State<BasketballPoints> {
  int teamAPoints=0,teamBPoints=0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.orange,
          title:const  Text('Points Counter',
          style:TextStyle(
            fontSize: 24,
            color: Colors.black
          ) ,)
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Spacer(
                 flex: 1,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Team A",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                     Text('$teamAPoints',
                      style:const TextStyle(
                        fontSize: 150,
                      ) ,
                    ),
                    Padding(
                        padding:const EdgeInsets.all(7),
                        child:
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child:const Text('Add 1 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(7),
                        child:
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints+=2;
                            });

                          },
                          child:const Text('Add 2 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        )
                    ),
                    Padding(
                        padding:const EdgeInsets.all(7),
                        child:
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints+=3;
                            });
                          },
                          child:const Text('Add 3 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                  const SizedBox(
                    height: 420,
                    width:50,
                    child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        ),
                  Column(
                    children: [
                      const Text("Team B",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                       Text('$teamBPoints',
                        style:const TextStyle(
                          fontSize: 150,
                        ) ,
                      ),
                      Padding(
                          padding:const EdgeInsets.all(7),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)
                            ),
                            onPressed: (){
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child:const Text('Add 1 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.all(7),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)
                            ),
                            onPressed: (){
                              setState(() {
                                teamBPoints+=2;
                              });
                            },
                            child:const Text('Add 2 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding:const EdgeInsets.all(7),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)
                            ),
                            onPressed: (){
                              setState(() {
                                teamBPoints+=3;
                              });
                            },
                            child:const Text('Add 3 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                ],
              ),
                    ],
                  ),
               const Spacer(flex: 1,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                   padding:const EdgeInsets.all(7),
                   child: ElevatedButton(

                     style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.orange,
                             minimumSize: const Size(150, 50)
                     ),
                       onPressed: (){
                       setState(() {
                         teamBPoints=0;
                         teamAPoints=0;
                       });
                       },
                       child:const Text('Reset',
                           style: TextStyle(
                         color: Colors.black,
                         fontSize: 18,)
                     )
                   )
                   )

                 ],
               ),
               const Spacer(flex: 2,)
             ]
        )
        )

    );
  }
}




