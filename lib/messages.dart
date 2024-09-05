import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageHome extends StatelessWidget {
  PageHome ({super.key});

  final List<User> user = [
    User(
      name: 'Ridwan lukman', 
      email: 'ridwanidnsolo@gmail.com', 
      imageURL: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (context, index) {
        final pengguna = user[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(pengguna.imageURL)),
          title: Text(pengguna.name),
          subtitle: Text(pengguna.email),
        );
      },
    );
  }
}


class User {
  final name;
  final email;
  final imageURL;

  User({this.name, this.email, this.imageURL});
}