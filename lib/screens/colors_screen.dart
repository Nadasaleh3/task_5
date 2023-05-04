import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});
   final List<String> entriesJapanese = <String>['hēi sè', 'zōng sè', 'Huáng sè','Huī sè',
   'lǜ sè','hóng sè','Bái sè'
   ];
   final List<String> entriesEnglish = <String>['Black', 'Brown', 'Yellow','Gray','Green',
   'Red','White'
   ];
   final List<String> entriesSounds = <String>['black', 'brown', 'yellow','gray','green',
   'red','white'
   ];
   final List<String>colorsImages = <String>['color_black', 'color_brown', 'yellow','color_gray','color_green',
   'color_red','color_white'
   ];
   final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 50, 37),
        
        title: Title(color:Color.fromARGB(255, 89, 50, 37),
         child: Text('Colors',
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
                child: Image.asset('assets/images/colors/${colorsImages[index]}.png'),
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
                  AssetSource('sounds/colors/${entriesSounds[index]}.wav')
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