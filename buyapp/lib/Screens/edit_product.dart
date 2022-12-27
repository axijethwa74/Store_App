import 'package:flutter/material.dart';

class EditProduct extends StatelessWidget {
  const EditProduct({super.key});

  static const routeName = "/edit_product";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Title"),
              textInputAction: TextInputAction.next,
            ),
          ],
        )),
      ),
    );
  }
}
