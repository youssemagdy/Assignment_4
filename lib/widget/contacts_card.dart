import 'package:contacts/model/contact.dart';
import 'package:flutter/material.dart';

class ContactsCard extends StatelessWidget
{
  const ContactsCard({Key? key, required this.contact}) : super(key: key);
  final Contact contact;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: contact.visibility,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${contact.name}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              const SizedBox(height: 10,),
              Text('Phone: ${contact.phone}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),
    );
  }
}
