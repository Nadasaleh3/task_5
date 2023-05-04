import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersScreen extends StatelessWidget {
   NumbersScreen({super.key});
   final List<String> entriesJapanese = <String>['	yī 一', 'èr 二', 'sān 三','	sì 四',
   '	wǔ 五','	liù 六','qī 七','bā 八','	jiǔ 九','shí 十'
   ];
   final List<String> entriesEnglish = <String>['One', 'Two', 'Three','Four','Five',
   'Six','Seven','Eight','Nine','Ten'
   ];
   final List<String> entriesSounds = <String>['one', 'two', 'three','four','five',
   'six','seven','eight','nine','ten'
   ];
   final List<String> numbersImages = <String>['number_one','number_two','number_three','number_four','number_five','number_six',
   'number_seven','number_eight','number_nine','number_ten'
   ];
   final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 50, 37),
        
        title: Title(color:Color.fromARGB(255, 89, 50, 37),
         child: Text('Numbers',
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
                child: Image.asset('assets/images/numbers/${numbersImages[index]}.png'),
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
                  AssetSource('sounds/numbers/${entriesSounds[index]}.wav')
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