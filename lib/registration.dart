import 'package:flutter/material.dart';
import 'avtorization.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 13, 0, 58),
        appBar: AppBar(
          title: const Text('Регистрация'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints:
            BoxConstraints.tightFor(width: 300, height: 600),
            child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder())),
                  ),
                  Text ('Введите логин'),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top:10),
                    child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()), obscureText: true ,),
                  ),
                  Text('Введите пароль'),

                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top:10),
                    child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()), obscureText: true ,),
                  ),
                  Text('Введите пароль еще раз'),
                  Text (''),
                  Text (''),
                  ElevatedButton(
                      child: const Text('Зарегистрироваться'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      }
                  ),
                  Text (''),
                  ElevatedButton(
                    child: const Text('Назад'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondRoute()),
                      );
                    },
                  ),

                ]
            ),
          ),
        )
    );
  }
}