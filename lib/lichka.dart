import 'package:flutter/material.dart';
import 'spisok.dart';

class FifthRoute extends StatelessWidget {
  const FifthRoute

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 13, 0, 58),
      appBar: AppBar(
        title: const Text('Личный кабинет'),
      ),
      body: ConstrainedBox(
          constraints:
          BoxConstraints.tightFor(width: 900, height: 600),
          child: Row(
            children: [

              Container(
                color: Color.fromARGB(0, 0, 0, 0),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Man_silhouette.svg/640px-Man_silhouette.svg.png',
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 30),
                  Text ('Имя: Павел', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 26),),
                  const SizedBox(height: 30),
                  Text ('Фамилия: Никитин',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 26),),
                  const SizedBox(height: 30),
                  Text ('Отчество: Игоревич',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 26),),
                  const SizedBox(height: 30),
                  Text ('Дата рождения: 01.01.2001',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 26),),
                  const SizedBox(height: 30),
                  Text ('Email: pavlyusha@gmail.com',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 26),),
                  const SizedBox(height: 150),
                  ElevatedButton(
                    child: const Text('Вернуться к покупкам',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FourthRoute()),
                      );
                    },
                  ),
                ]
              ),


      ],
      ),
    ),
    );
  }
}