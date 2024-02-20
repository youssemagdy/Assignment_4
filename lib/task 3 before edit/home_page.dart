// import 'package:contacts/task%203%20after%20edit/model/contact.dart';
// import 'package:contacts/task%203%20after%20edit/widget/contacts_card.dart';
// import 'package:contacts/task%203%20after%20edit/widget/text_field.dart';
// import 'package:flutter/material.dart';
//
// class HomePage1 extends StatefulWidget
// {
//   const HomePage1({Key? key}) : super(key: key);
//   @override
//   State<HomePage1> createState() => _HomePage1State();
// }
//
// class _HomePage1State extends State<HomePage1> {
//   List<Contact1> contactsList1 =
//   [
//     Contact1(),
//     Contact1(),
//     Contact1(),
//   ];
//   TextEditingController name = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF9e9e9e),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF2196f3),
//         title: const Text('Contacts Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
//               child: TextFiled(
//                 controller: name,
//                 hintText: 'Enter Your Name Here',
//                 suffixIcon: const Icon(Icons.edit, size: 20, color: Colors.blue,),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
//               child: TextFiled(
//                 controller: phone,
//                 hintText: 'Enter Your Number Here',
//                 suffixIcon: const Icon(Icons.call, size: 20, color: Colors.blue,),
//               ),
//             ),
//             const SizedBox(height: 35,),
//             Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: FilledButton(
//                       onPressed: ()
//                       {
//                         if (counter < 3)
//                         {
//                           contactsList1[counter] = Contact1(visibility: true, name: name.text, phone: phone.text);
//                           counter++;
//                           name.clear();
//                           phone.clear();
//                           setState(() {
//
//                           });
//                         }
//                       },
//                       style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2196f3),),
//                       child: const Text(
//                         'Add',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 27,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 5,),
//                   Expanded(
//                     child: FilledButton(
//                       onPressed: ()
//                       {
//                         if (counter > 0)
//                         {
//                           contactsList1[counter - 1] = Contact1();
//                           counter --;
//                           setState(() {
//
//                           });
//                         }
//                       },
//                       style: FilledButton.styleFrom(backgroundColor:  const Color(0xFFff5252).withOpacity(0.9),),
//                       child: const Text(
//                         'Delete',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 27,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 35,),
//             ContactsCard1(contact1: contactsList1[0]),
//             ContactsCard1(contact1: contactsList1[1]),
//             ContactsCard1(contact1: contactsList1[2]),
//           ],
//         ),
//       ),
//     );
//   }
// }
