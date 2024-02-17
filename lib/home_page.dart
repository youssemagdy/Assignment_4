import 'package:contacts/model/contact.dart';
import 'package:contacts/widget/contacts_card.dart';
import 'package:contacts/widget/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Contact> contactsList =
  [
    Contact(),
    Contact(),
    Contact(),
  ];
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9e9e9e),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196f3),
        title: const Text('Contacts Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
              child: TextFiled(
                controller: name,
                hintText: 'Enter Your Name Here',
                suffixIcon: const Icon(Icons.edit, size: 20, color: Colors.blue,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              child: TextFiled(
                controller: phone,
                hintText: 'Enter Your Number Here',
                suffixIcon: const Icon(Icons.call, size: 20, color: Colors.blue,),
              ),
            ),
            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: ()
                      {
                        if (counter < 3)
                        {
                          contactsList[counter] = Contact(visibility: true, name: name.text, phone: phone.text);
                          counter++;
                          name.clear();
                          phone.clear();
                          setState(() {

                          });
                        }
                      },
                      style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2196f3),),
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: FilledButton(
                      onPressed: ()
                      {
                        if (counter > 0)
                        {
                          contactsList[counter - 1] = Contact();
                          counter --;
                          setState(() {

                          });
                        }
                      },
                      style: FilledButton.styleFrom(backgroundColor:  const Color(0xFFff5252).withOpacity(0.9),),
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35,),
            ContactsCard(contact: contactsList[0]),
            ContactsCard(contact: contactsList[1]),
            ContactsCard(contact: contactsList[2]),
          ],
        ),
      ),
    );
  }
}
