import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'hm.dart';
//import 'package:just_audio';

class nowplaying extends StatefulWidget {
  const nowplaying({super.key});


  @override
  State<nowplaying> createState()=>nowplayingState();
}
class nowplayingState extends State<nowplaying>{
  int ac=0;
  List<String> song = [
    'song/LaagiLaganShankara.mp3',
    'song/3_Peg.mp3',
    'song/Carrom_Board.mp3',
    'song/Hostel.mp3'
  ];
  AudioPlayer pl=AudioPlayer();
  //String so='LaagiLaganShankara';
  
  Icon ic = Icon(Icons.play_arrow, size: 50);
  
  playSong(){
    int n = 1;
    var s = AssetSource(song[1]);
    print(s);
    return s;
  }
  icc() {
    
    if(ac==0){
      print(playSong());
      int n = 1;
      var s = AssetSource(song[1]);
      pl.play(s);
      ic = Icon(Icons.pause, size: 50);
      ac=1;
    }else{
      pl.pause();
      ic = Icon(Icons.play_arrow, size: 50);
      ac=0;
    }
  }
  bool isDrawer=false;
  openDrawer(){
    setState(() {
      isDrawer=!isDrawer;
    });
  }
  header(){
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(1, 238, 238, 226),
      child: Text("Song List",style: TextStyle(fontStyle: FontStyle.italic,fontSize: MediaQuery.of(context).size.height*0.15,color: Colors.black),),
    );
  }
  @override
  Widget build(BuildContext context) {
    
    //  final assetsAudioPlayer=AssetsAudioPlayer();
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;


 /*   
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      /*body: Center(
        child: ElevatedButton(
          child: Text('Open Drawer'),
          onPressed: _toggleDrawer,
        ),
      ),*/
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
    );
*/




    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * 0.1,
        title: Text(
          "Now Playing",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        /*leading: TextButton(onPressed: (){Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>hm()));},
        child: Icon(Icons.arrow_back),),*/
        /*actions: [ElevatedButton(onPressed:openDrawer,
         child: Icon(Icons.menu_rounded),),
          SizedBox(
            width: 5,
          )
        ],*/
      ),
      backgroundColor: Colors.white,
      /*drawer: Drawer(child: SingleChildScrollView(
          child: Column(
            children: [
              header()
            ],
          ),
        ),),*/
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Song List'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Singer List'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),

      body: Column(children: [
        Container(
          height: h * 0.597,
          width: w,
          color: Color.fromARGB(255, 0, 0, 0),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: h * 0.597 * 0.3207 - h * 0.03, horizontal: 0),
              height: h * 0.214,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15)),
              child: //Image.asset("assets/image/1.jpg"), //
              Icon(Icons.music_note_sharp, size: 100, color: Colors.black),
                  //
            ),
            Container(
              //margin: EdgeInsets.symmetric(vertical:h*0.02,horizontal:w),
              height: h * 0.029,
              width: w,
              child: Text(
                "Playing song",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.amber),
              ),
            )
          ]),
        ),
        Container(
          width: w,
          height: h * 0.001,
          color: Colors.amber,
        ),
        Container(
          height: h * 0.2,
          width: w,
          color: Colors.black38,
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: h * 0.2,
                  width: w * 0.333,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Icon(Icons.arrow_back_rounded, size: 50),
                ),
                Container(
                  height: h * 0.2,
                  width: w * 0.333,
                  child: TextButton(
                    child: ic,
                    onPressed: ()=>{setState((){icc();}),}, 
                    ),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  height: h * 0.2,
                  width: w * 0.333,
                  child: Icon(Icons.arrow_forward_rounded, size: 50),
                  decoration: BoxDecoration(color: Colors.black),
                )
              ],
            )
          ]),
        ),
        Container(
          width: w,
          height: h * 0.001,
          color: Colors.amber,
        ),
        Container(
          height: h * 0.101,
          width: w,
          color: Colors.black38,
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: h * 0.101,
                  width: w * 0.25,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Icon(Icons.shuffle, size: 50),
                ),
                Container(
                  height: h * 0.101,
                  width: w * 0.25,
                  child: Icon(Icons.repeat_on, size: 50),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  height: h * 0.101,
                  width: w * 0.25,
                  child: Icon(Icons.playlist_add, size: 50),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  height: h * 0.1,
                  width: w * 0.25,
                  child: Icon(Icons.favorite, size: 50, color: Colors.red),
                  decoration: BoxDecoration(color: Colors.black),
                )
              ],
            )
          ]),
        )
      ]),
    );
  }
}
