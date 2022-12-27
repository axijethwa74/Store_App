import 'package:buyapp/ProductDetailScreen.dart';
import 'package:buyapp/Provider/Order.dart';
import 'package:buyapp/Provider/cart.dart';
import 'package:buyapp/Screens/cart_Screen.dart';
import 'package:buyapp/Screens/edit_product.dart';
import 'package:buyapp/Screens/order_Screen.dart';
import 'package:buyapp/Screens/user_Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/product_overview_screen.dart';
// ignore: unused_import
import 'Provider/Products_provider.dart';
// ignore: unused_import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            // ignore: deprecated_member_use
            accentColor: const Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Lato'),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) =>
              const ProductDetailScreen(),
          Screencart.routeName: (context) => const Screencart(),
          OrderScreen.routeName: (context) => const OrderScreen(),
          UserProduct.routeName: ((context) => const UserProduct()),
          EditProduct.routeName: ((context) => const EditProduct()),
        },
      ),
    );
  }
}
