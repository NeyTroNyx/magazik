import 'package:flutter/material.dart';
import 'package:untitled15/spisok.dart';
import 'package:untitled15/korzina.dart';

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
    Item(id:'1',name: 'Властелин колец',photo: 'https://upload.wikimedia.org/wikipedia/ru/8/82/Братство_Кольца.gif',author:' Джон Р. Р. Толкин',year:'1954', text: ' славится тем, что ', number: 'Сказания о Средиземье — это хроника Великой войны за Кольцо, войны, длившейся не одну тысячу лет. Тот, кто владел Кольцом, получал власть над всеми живыми тварями, но был обязан служить злу.', price: '900₽' ),
    Item(id:'2',name: 'Война и мир',photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2a/T25-011.jpg',author:' Лев Толстой',year:'1865', text: ' славится тем, что ', number: '«Война и мир» — огромная сага, с равной глубиной рассказывающая о событиях различного масштаба: от частной жизни нескольких семей и конкретных сражений 1812 года до движения народов и истории вообще.', price: '900₽' ),
    Item(id:'3',name: 'Дюна',photo: 'https://upload.wikimedia.org/wikipedia/ru/5/5a/FrankHerbert_Dune_1st.jpg',author:' Фрэнк Герберт',year:'1965', text: ' славится тем, что ', number: 'Человечество расселилось по далёким планетам, а за власть над обитаемым пространством постоянно борются разные могущественные семьи. В центре противостояния оказывается пустынная планета Арракис. Там обитают гигантские песчаные черви, а в пещерах затаились скитальцы-фремены, но её главная ценность — спайс, самое важное вещество во Вселенной. Тот, кто контролирует Арракис, контролирует спайс, а тот, кто контролирует спайс, контролирует Вселенную.', price: '900₽' ),
    Item(id:'4',name: 'Великий Гэтсби',photo: 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg',author:' Фрэнсис Скотт Фицджеральд',year:'1925', text: ' славится тем, что ', number: 'Скотта Фицджеральда "Великий Гэтсби", действие которого разворачивается в гламуре и декадансе Нью-Йорка 1920-х годов, лето в разгаре, вечеринки в разгаре и коктейли льются рекой. История вращается вокруг миллионера, сделавшего себя сам, Джея Гэтсби и его стремления вернуть свою потерянную любовь, Дейзи Бьюкенен.', price: '900₽' ),
    Item(id:'5',name: 'Граф Монте-Кристо',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Louis_Français-Dantès_sur_son_rocher.jpg/1920px-Louis_Français-Dantès_sur_son_rocher.jpg',author:' Александр Дюма',year:'1844', text: ' славится тем, что ', number: 'Книга о невероятной душевной силе человека,о преодолении самых тяжелых испытаний жизни,и,конечно,о мести тем,кто отнял самое дорогое -любовь и свободу. 14 лет Эдмон Дантес был узником Замка Иф. И судьба предоставила ему шанс сбежать. Он разбогател и стал зваться графом Монте-Кристо.', price: '900₽' ),
    Item(id:'6',name: 'Анна Каренина',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/AnnaKareninaTitle.jpg/1920px-AnnaKareninaTitle.jpg',author:' Лев Толстой',year:'1875', text: ' славится тем, что ', number: '«Анна Каренина» — роман о любви, семье, смысле жизни и, конечно же, женской судьбе. Показывая истории нескольких семей, счастливых и несчастных, Толстой рассказывает о тончайших движениях человеческой души: кажется, в этом романе он понял о людях больше, чем они сами о себе могут понять.', price: '900₽' ),
    Item(id:'7',name: 'Убить пересмешника',photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/485px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg?uselang=ru',author:' Харпер Ли',year:'1960', text: ' славится тем, что ', number: 'Трое детей боятся своего соседа — затворника Рэдли по прозвищу Страшила. Взрослые Мейкомба не решаются говорить о Страшиле, и в течение многих лет мало кто видел его. Дети будоражат воображение друг друга слухами о его внешности и причинами затворничества. Они придумывают, как вытащить его из дома.', price: '900₽' ),
    Item(id:'8',name: 'Винни Пух',photo: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Winnie-the-Pooh_175.png',author:' Алан Александр Милн',year:'1926', text: ' славится тем, что ', number: 'Винни-Пух — главный герой советской серии мультфильмов «Винни-Пух», жизнерадостный медвежонок с опилками в голове, который любит распевать песенки, сочиняемые им шумелки-пыхтелки. Больше всего на свете Винни любит лакомиться мёдом и проводить время со своим лучшим другом, поросенком Пятачком.', price: '900₽' ),
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