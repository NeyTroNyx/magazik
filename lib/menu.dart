import 'package:flutter/material.dart';
import 'avtorization.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 13, 0, 58),
      appBar: AppBar(
          title: Center(
            child: const Text('Книжный магазин Роги и Ники',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 30,),),
          )
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Выполнить вход',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}