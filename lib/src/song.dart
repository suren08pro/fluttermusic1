import 'package:flutter/material.dart';
List<String> song = [
  'song/Laagi_Lagan_Shankara.mp3',
  'song/3_Peg.mp3',
  'song/Carrom_Board.mp3',
  'song/Hostel.mp3',
  'song/Rooh.mp3',
  'song/Tutta_Dil.mp3',
  'song/Vadda_Bai.mp3',
  'song/Yaara.mp3',
  'song/Zindagi.mp3',
  'song/Saade_Aala.mp3',
  'song/Shakti_Water.mp3',
  'song/Hashtag.mp3',
  'song/Dilwale.mp3',
  'song/Gumaan.mp3',
  'song/Kinare.mp3',
  'song/Love_You.mp3',
];
List<String> favSong =[];
List<String> favSongName = [];
List<String> sname = [];

class sN extends StatelessWidget {
   sN({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: song.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(song[index]),
        );
      },
    );
     /*Widget songList(){
    return Container(
      child: Column(
        children: Set <Container> [for(int i=0;i<sname.length-1;i++){
          Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text(sname[i]),
                )
        }
          
        ],
      ),
    );
   }*/
    //var wid = List<Widget>();
    //for (var s in song) {
      //wid.add(s);
    //}
    //Container cont() {}
    print("object");
    /*return 
       Scaffold(
        appBar: AppBar(title: Text('Song List')),
        body: Column(
        children: [
          for (String songn in sname) Text(songn),
        ],
      ))
    ;*/
  }
}