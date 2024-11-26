import 'package:baskerball/Cubit/counterCubit.dart';
import 'package:baskerball/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballPoints());
}

class BasketballPoints extends StatelessWidget {
  BasketballPoints({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home()

      ),
    );
  }
}
