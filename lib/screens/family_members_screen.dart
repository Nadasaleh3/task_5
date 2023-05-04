import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyScreen extends StatelessWidget {
   FamilyScreen({super.key});
   final List<String> entriesJapanese = <String>['Ojīsan', 'O bāchan', 'Chichioya','Hahaoya',
   'Musuko','Musume','Ani','Ane','Otōto','Imōto'
   ];
   final List<String> entriesEnglish = <String>['Grandfather', 'Grandmother', 'Father','Mother','Son',
   'Daughter','Older brother','Older sister','Younger brother','Younger sister'
   ];
   final List<String> entriesSounds = <String>['grandfather', 'grandmother', 'father','mother','son',
   'daughter','olderbrother','oldersister','youngerbrother','youngersister'
   ];
   final List<String> familyImages = <String>['family_grandfather', 'family_grandmother', 'family_father',
   'family_mother','family_son','family_daughter','family_older_brother','family_older_sister',
   'family_younger_brother','family_younger_sister'
   ];
   final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 50, 37),
        
        title: Title(color:Color.fromARGB(255, 89, 50, 37),
         child: Text('Family Members',
         style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500
         ),
         ),
         ),
      ),
      body:  ListView.separated(
    padding: const EdgeInsets.all(10),
    itemCount: entriesJapanese.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14))
        ),
        elevation: 2,
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            color: Colors.green
            ),
           
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.yellow[50],
                width: 90,
                child: Image.asset('assets/images/family_members/${familyImages[index]}.png'),
              ),
              Padding(
                
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${entriesJapanese[index]}',
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                   ),
                  ),
                  SizedBox(height: 4,),
                  Text('${entriesEnglish[index]}',
                    style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                   ),
                  ),
                  ],
                ),
              ),
              Spacer(),
                IconButton(onPressed: (){
                player.play(
                  AssetSource('sounds/family_members/${entriesSounds[index]}.wav')
                );
                }, 
                icon: Icon(Icons.play_arrow_rounded,
                size: 35,
                ),
                )
            ],
          ),
        ),
      );
    }, separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 5,),
  )
    );
  }
}