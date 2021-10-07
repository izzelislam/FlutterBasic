import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {

  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index){
            return ChatTile(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {

  final String? avatar;
  final String? title;
  final String? subtitle;

  ChatTile({
    this.avatar,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${this.title}'),
      subtitle: Text('${this.subtitle}', maxLines: 2, overflow: TextOverflow.ellipsis),
      leading: CircleAvatar(
        backgroundImage: NetworkImage('${this.avatar}'),
      ),
      trailing: Text('10:00 am'),
      // tileColor: Colors.yellow,
      dense: false,
      contentPadding: EdgeInsets.all(10),
      onTap: (){},
    );
  }
}