import 'package:buyapp/Provider/Products_provider.dart';
import 'package:buyapp/Screens/app_drawer.dart';
import 'package:buyapp/Screens/edit_product.dart';
import 'package:buyapp/Screens/user_ProductItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProduct extends StatelessWidget {
  const UserProduct({super.key});

  static const routeName = "/User_product";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final productData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Products"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(EditProduct.routeName);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productData.items.length,
          itemBuilder: (BuildContext ctx, i) => Column(
            children: [
              UserItemProduct(
                  title: productData.items[i].title,
                  imageUrl: productData.items[i].imageUrl),
            ],
          ),
        ),
      ),
    );
  }
}
