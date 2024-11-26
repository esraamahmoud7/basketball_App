import 'package:baskerball/Cubit/counterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/couterState.dart';

class Home extends StatelessWidget {
   Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //<counterCubit, CounterIncrementStates> should be exist to define which cubit it will deal with
    return BlocBuilder<counterCubit, CounterIncrementStates>(

      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.orange,
                title: const Text('Points Counter',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black
                  ),)
            ),
            body: Column(
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
                          Text('${BlocProvider.of<counterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(7),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: const Size(150, 50)
                                ),
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamAIncrement(1);

                                },
                                child: const Text('Add 1 point',
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
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamAIncrement(2);
                                },
                                child: const Text('Add 2 point',
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
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamAIncrement(3);

                                },
                                child: const Text('Add 3 point',
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
                        width: 50,
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
                          Text('${BlocProvider.of<counterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(7),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: const Size(150, 50)
                                ),
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamBIncrement(1);
                                },
                                child: const Text('Add 1 point',
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
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamBIncrement(2);

                                },
                                child: const Text('Add 2 point',
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
                                onPressed: () {
                                  BlocProvider.of<counterCubit>(context).TeamBIncrement(3);
                                },
                                child: const Text('Add 3 point',
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
                          padding: const EdgeInsets.all(7),
                          child: ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)
                              ),
                              onPressed: () {
                                BlocProvider.of<counterCubit>(context).Reset();
                              },
                              child: const Text('Reset',
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
        );
      },
    );
  }
}




