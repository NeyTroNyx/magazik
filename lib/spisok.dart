import 'package:flutter/material.dart';
import 'grid.dart';
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
                      MaterialPageRoute(builder: (context) => const FourthRoute()),
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
                    MaterialPageRoute(builder: (context) => const FourthRoute()),
                  );
                },
              ),
              ElevatedButton(
                child:
                Image.network('data:image/jpeg;base64,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',
                  width: 30,
                  fit: BoxFit.cover,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthRoute()),
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