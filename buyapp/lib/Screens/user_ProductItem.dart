import 'package:flutter/material.dart';

class UserItemProduct extends StatelessWidget {
  const UserItemProduct(
      {super.key, required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  // ignore: unused_label
                  color:
                  Theme.of(context).primaryColor;
                },
                icon: const Icon(Icons.edit)),
            IconButton(
              onPressed: () {
                // ignore: unused_label
                color:
                Colors.red;
              },
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
