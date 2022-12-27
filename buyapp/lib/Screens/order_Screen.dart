import 'package:buyapp/Screens/orderItems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:buyapp/Provider/Order.dart' show Orders;

import 'app_drawer.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  static const routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Orders"),
        ),
        drawer: const AppDrawer(),
        body: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: ((ctx, i) => OrderItems(order: orderData.orders[i])),
        ));
  }
}
