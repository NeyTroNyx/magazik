import 'package:flutter/material.dart';
import 'menu.dart';
import 'registration.dart';
import 'spisok.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 13, 0, 58),
        appBar: AppBar(
          title: const Text('Авторизация',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints:
            BoxConstraints.tightFor(width: 300, height: 600),
            child: Column(
                children: [
                  Container(

                    color: Color.fromARGB(0, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder()),style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                  Text ('Логин',style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  Container(
                    color: Color.fromARGB(0, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top:10),
                    child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()),style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ), obscureText: true ,),
                  ),
                  Text('Пароль',style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  Text (''),
                  ElevatedButton(
                      child: const Text('Вход'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FourthRoute()),
                        );
                      }
                  ),
                  Text (''),
                  ElevatedButton(
                      child: const Text('Регистрация'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ThirdRoute()),
                        );
                      }
                  ),
                  Text (''),
                  ElevatedButton(
                      child: const Text('Назад'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FirstRoute()),
                        );
                      }
                  ),

                ]
            ),
          ),
        )
    );
  }
}