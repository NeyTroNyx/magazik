import 'package:flutter/material.dart';
import 'grid.dart';
import 'CountryDetailsPage.dart';
import 'lichka.dart';

void main() {
  runApp(const FourthRoute());
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridViewPage(),
    );
  }
}


class GridItem extends StatelessWidget {
  final Item item;

  const GridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 13, 0, 58),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              item.photo,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              item.name,
              style: const TextStyle(
                  color: Colors.white,fontSize: 20.0),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Автор: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.author,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Год: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  item.year,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Стоимость: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  item.price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Подробнее: ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                      color: Colors.white,fontSize: 20.0),
                ),
                Text( item.text,  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                ElevatedButton(
                  child: const Text('...'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CountryDetailsPage(
                        name: item.name,
                        flagUrl: item.photo,
                        description: item.number,
                      ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child:
                Image.network('https://upload.wikimedia.org/wikipedia/ru/5/55/Full_Trash.png',
                  width: 30,
                  fit: BoxFit.cover,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FifthRoute()),
                  );
                },
              ),
              ElevatedButton(
                child:
                Image.network('data:image/png;base64,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',
                  width: 30,
                  fit: BoxFit.cover,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthRoute()),
                  );
                },
              ),
]
            )
          ]
      ),
    );
  }
}