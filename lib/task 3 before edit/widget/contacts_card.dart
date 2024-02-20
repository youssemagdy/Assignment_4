import 'package:contacts/model/contact.dart';
import 'package:flutter/material.dart';

import '../model/contact.dart';

class ContactsCard1 extends StatefulWidget
{
  const ContactsCard1({Key? key, required this.contact1}) : super(key: key);
  final Contact1 contact1;

  @override
  State<ContactsCard1> createState() => _ContactsCardState();
}

class _ContactsCardState extends State<ContactsCard1> {
  bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.contact1.visibility,
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
              InkWell(
                onTap: ()
                {
                  showMore =! showMore;
                  setState(() {
                    
                  });
                },
                child: Text(
                  'Name: ${widget.contact1.name}',
                  maxLines: showMore == false? 1 : null,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Phone: ${widget.contact1.phone}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
