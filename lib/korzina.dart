import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled15/grid.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Корзина'),
        ),
        body: Consumer<CartModel>(
            builder: (context, cart, child)
            {
              if (cart.items.isEmpty) {
                return Center(child: Text('Корзина пуста'));
              }
              return ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  int ItemId = cart.items.keys.toList() [index];
                  int quantity = cart.items[ItemId]!;
                  return ListTile(
                    title: Text(Item.name),
                    subtitle:
                    Text('Цена: ${Item.price} руб., Количество: '$quantity),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false).removeFromCart(
                            Item);
                        },
                    ),
                  );
                  },
              );
              },
        ),
    );
  }
}