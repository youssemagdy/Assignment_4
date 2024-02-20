import 'package:contacts/model/contact.dart';
import 'package:flutter/material.dart';

class ContactsCard extends StatefulWidget
{
  const ContactsCard({Key? key, required this.contact, required this.onDelete, required this.index}) : super(key: key);
  final Contact contact;
  final Function(int) onDelete;
  final int index;
  @override
  State<ContactsCard> createState() => _ContactsCardState();
}

class _ContactsCardState extends State<ContactsCard> {
  bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.contact.visibility,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: ()
                      {
                        showMore =! showMore;
                        setState(() {});
                      },
                      child: Text(
                        'Name: ${widget.contact.name}',
                        maxLines: showMore == false? 1 : null,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Phone: ${widget.contact.phone}',
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: ()
                  {
                    widget.onDelete(widget.index);
                  },
                  icon: const Icon(Icons.delete_forever, color: Color(0xFFde5c44), size: 39,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
