import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: const MyApp(),
    title: 'Книжный магазин Роги и Ники',
    home: FirstRoute(),
  )
  );
}

void main() {
  runApp(const MaterialApp(
    title: 'Книжный магазин Роги и Ники',
    home: FirstRoute(),

  ));
}