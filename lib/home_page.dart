import 'package:contacts/model/person.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String? hintText;
  const HomePage({Key? key, this.hintText }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Person> listOfData = [
    Person(),
    Person(),
    Person(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: const Color(0xFF168ff7),
          title: const Text('Contacts Screen', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(Icons.edit, color: Colors.blue,),
                    hintText: 'Enter Your Name Here',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 2.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(Icons.call, color: Colors.blue,),
                    hintText: 'Enter Your Phone Number Here',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 2.5),
                  ),
                ),
              ),
            ),
            // padding button
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton(
                        onPressed: (){},
                        style: FilledButton.styleFrom(backgroundColor: const Color(0xFf2196f3),),
                        child: const Text('Add', style: TextStyle(color: Colors.black, fontSize: 20),),
                    ),
                  ),
                  const SizedBox(width: 6,),
                  Expanded(
                    child: FilledButton(
                      onPressed: (){},
                      style: FilledButton.styleFrom(backgroundColor: const Color(0xFFff5252)),
                      child: const Text('Delete', style: TextStyle(color: Colors.black, fontSize: 20),),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: listOfData[0].visibilty,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
