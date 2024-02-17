import 'package:contacts/model/person.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  Card({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: person.visibilty,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),color: Colors.white,
          ),
          child: Column(
            children: [
              Text('Name: ${person.name}'),
              const SizedBox(height: 8,),
              Text('Phone: ${person.number}'),
            ],
          ),
        ),
    );
  }
}
