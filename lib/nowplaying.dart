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
  AudioPlayer pl=AudioPlayer();
  //String so='LaagiLaganShankara';
  var s=AssetSource('song/LaagiLaganShankara.mp3');
  Icon ic = Icon(Icons.play_arrow, size: 50);
  icc() {
    if(ac==0){
      pl.play(s);
      ic = Icon(Icons.pause, size: 50);
      ac=1;
    }else{
      pl.pause();
      ic = Icon(Icons.play_arrow, size: 50);
      ac=0;
    }
  }
  @override
  Widget build(BuildContext context) {
    
    //  final assetsAudioPlayer=AssetsAudioPlayer();
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
        leading: TextButton(onPressed: (){Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>hm()));},
        child: Icon(Icons.arrow_back),),
        actions: [
          Icon(Icons.menu_rounded),
          SizedBox(
            width: 5,
          )
        ],
      ),
      backgroundColor: Colors.white,
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
