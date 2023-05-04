import 'package:flutter/material.dart';
import 'package:task5/screens/number_screen.dart';

import 'colors_screen.dart';
import 'family_members_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 50, 37),
        
        title: Title(color: Color.fromARGB(255, 89, 50, 37),
         child: const Text('Language Learning app',
         style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500
         ),
         ),
         ),
      ),
      body:  Column(
        
          children: [
            
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15),
              height: 60,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Text('your way to learn japanese',
                     style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                     ),
                     ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NumbersScreen(),  
                ),
                );
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15),
                height: 60,
                width: double.infinity,
                color: Colors.orange,
                child: const Text('Numbers',
                       style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                       ),
                       ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FamilyScreen(),  
                ),
                );
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15),
                height: 60,
                width: double.infinity,
                color: Colors.green,
                child: const Text('Family Members',
                       style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                       ),
                       ),
              ),
            ),
            InkWell(
               onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ColorsScreen(),  
                ),
                );
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15),
                height: 60,
                width: double.infinity,
                color: Colors.purple,
                child: const Text('Colors',
                       style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                       ),
                       ),
              ),
            ),
          ],
        ),
    );
  }
}