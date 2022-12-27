// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Order.dart';
import '../Provider/cart.dart' show Cart;
import 'cart_Items.dart';

class Screencart extends StatelessWidget {
  const Screencart({super.key});

  static const routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My cart"),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Chip(
                    label: Text('\$${cart.totalAmount.toStringAsFixed(2)}'),
                    backgroundColor: Colors.white,
                  ),
                  TextButton(
                    child: const Text(
                      "Order Now",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Provider.of<Orders>(context, listen: false).addOrder(
                        cart.items.values.toList(),
                        cart.totalAmount,
                      );
                      cart.clear();
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (ctx, i) => CartItems(
              cart.items.values.toList()[i].id,
              cart.items.keys.toList()[i],
              cart.items.values.toList()[i].price,
              cart.items.values.toList()[i].quantity,
              cart.items.values.toList()[i].title,
            ),
          )),
        ],
      ),
    );
  }
}
