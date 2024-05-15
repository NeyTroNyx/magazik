import 'package:flutter/material.dart';
import 'package:untitled15/spisok.dart';

class Item {
  String id;
  String name;
  String photo;
  String author;
  String year;
  String text;
  String number;
  String price;

  Item({required this.id, required this.name, required this.photo, required this.author, required this.year, required this.text, required this.number, required this.price });
}

class MyGridViewPage extends StatelessWidget {
  final List<Item> items = [
    Item(id:'1',name: 'Властелин колец',photo: 'https://upload.wikimedia.org/wikipedia/ru/8/82/Братство_Кольца.gif',author:' Джон Р. Р. Толкин',year:'1954', text: ' славится тем, что ', number: 'first', price: '900₽' ),
    Item(id:'2',name: 'Война и мир',photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2a/T25-011.jpg',author:' Лев Толстой',year:'1865', text: ' славится тем, что ', number: 'second', price: '900₽' ),
    Item(id:'3',name: 'Дюна',photo: 'https://upload.wikimedia.org/wikipedia/ru/5/5a/FrankHerbert_Dune_1st.jpg',author:' Фрэнк Герберт',year:'1965', text: ' славится тем, что ', number: 'third', price: '900₽' ),
    Item(id:'4',name: 'Великий Гэтсби',photo: 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg',author:' Фрэнсис Скотт Фицджеральд',year:'1925', text: ' славится тем, что ', number: 'fourth', price: '900₽' ),
    Item(id:'5',name: 'Граф Монте-Кристо',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Louis_Français-Dantès_sur_son_rocher.jpg/1920px-Louis_Français-Dantès_sur_son_rocher.jpg',author:' Александр Дюма',year:'1844', text: ' славится тем, что ', number: 'fifth', price: '900₽' ),
    Item(id:'6',name: 'Анна Каренина',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/AnnaKareninaTitle.jpg/1920px-AnnaKareninaTitle.jpg',author:' Лев Толстой',year:'1875', text: ' славится тем, что ', number: 'sixth', price: '900₽' ),
    Item(id:'7',name: 'Убить пересмешника',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/485px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg?uselang=ru',author:' Харпер Ли',year:'1960', text: ' славится тем, что ', number: 'seventh', price: '900₽' ),
    Item(id:'8',name: 'Винни Пух',photo: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Winnie-the-Pooh_175.png',author:' Алан Александр Милн',year:'1926', text: ' славится тем, что ', number: 'eighth', price: '900₽' ),
  ];

  MyGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Книжный магазин Роги и Ники'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return GridItem(
            item: items[index],
          );
        }),
      ),
    );
  }
}