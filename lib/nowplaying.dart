import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'hm.dart';
import 'src/song.dart';
//import 'package:just_audio';

class nowplaying extends StatefulWidget {
  const nowplaying({super.key});


  @override
  State<nowplaying> createState()=>nowplayingState();
}
class nowplayingState extends State<nowplaying>{
  bool playing=false;
  int page = 0;
  AudioPlayer pl=AudioPlayer();
  Icon ic = Icon(Icons.play_arrow, size: 50);
  int songNum = 0;
  
  sort() {
    int n = 0;
    for (String s in song) {
      sname.insert(n,'');
      sname[n] = '';
      for (int i = 0; i < s.length; i++) {
        if (s[i] == '/') {
          for (int j = i + 1; j < s.length; j++) {
            if(s[j]=='_'){
              sname[n]+=' ';
              continue;
            }
            if (s[j] == '.') 
              break;
            sname[n] += s[j];
          }
          break;
        }
      }
      n++;
    }
    return sname[songNum];
  }
  playSong(int n) {
    ic = Icon(Icons.pause, size: 50);
    playing = true;
    return pl.play(AssetSource(song[n]));
  }
  pauseSong() {
    pl.pause();
    ic = Icon(Icons.play_arrow, size: 50);
    playing = false;
  }
  icc() {
    if(playing){
      pauseSong();
    }else{
      playSong(songNum);
    }
  }
  play2list(){
    if(playing)
      pauseSong();
    playSong(songNum);
  }
  nxts(){
    if(songNum<song.length-1){
      songNum++;
      if(playing)
        pauseSong();
      playSong(songNum);
      //playing=true;
    }else{
      songNum=0;
      if (playing) 
        pauseSong();
      playSong(songNum);
    }
  }
  bcks(){
    if (songNum > 0 ) {
      songNum--;
      if (playing) 
        pauseSong();
      playSong(songNum);
      //playing =true;
    }else{
      songNum=song.length-1;
      if (playing) 
        pauseSong();
      playSong(songNum);
      //playing=true;
    }
  }
  fav(){
    if(favSong.contains(song[songNum]))
      return;
    favSong.add(song[songNum]);
    favSongName.add(sname[songNum]);
  }
  @override
  Widget build(BuildContext context) {
     
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    playingPage(){
      return
      Container(
        child:
          Column(children: [
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
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: Icon(Icons.music_note_sharp,
                      size: 100, color: Colors.black),
                  //
                ),
                Container(
                  //margin: EdgeInsets.symmetric(vertical:h*0.02,horizontal:w),
                  height: h * 0.029,
                  width: w,
                  child: Text(
                    sort(),
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
                      child: TextButton(
                        onPressed: () => {
                          setState(() {
                            bcks();
                          })
                        },
                        child: Icon(Icons.arrow_back_rounded, size: 50),
                      ),
                    ),
                    Container(
                      height: h * 0.2,
                      width: w * 0.333,
                      child: TextButton(
                        child: ic,
                        onPressed: () => {
                          setState(() {
                            icc();
                          }),
                        },
                      ),
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                    Container(
                      height: h * 0.2,
                      width: w * 0.333,
                      child: TextButton(
                        onPressed: () => {
                          setState(() {
                            nxts();
                          })
                        },
                        child: Icon(Icons.arrow_forward_rounded, size: 50),
                      ),
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
                      child: TextButton(
                        child:
                            Icon(Icons.favorite, size: 50, color: Colors.red),
                        onPressed: ()  {fav();},
                      ),
                      decoration: BoxDecoration(color: Colors.black),
                    )
                  ],
                )
              ]),
            )
          ]),
        );
    }
    //  final assetsAudioPlayer=AssetsAudioPlayer();
    songFav() {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: ListView.builder(
        itemCount: favSongName.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favSongName[index]),
            tileColor: Colors.black,
            onTap: () => {
              setState(() {
                for(int i=0;i<song.length;i++){
                  if(song[i]==favSong[index]){
                    print(i);
                    songNum=i;}
                }
                play2list();
              }),
            },
          );
        },
      ));
    }
    songList(){
      sort();
      return Container(
         height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        child:
        ListView.builder(
        itemCount: song.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(sname[index]),tileColor: Colors.black,
          onTap:() => {setState(() {
            songNum=index;
            play2list();
            }),},);
        },
      ));
    }
    String pagetitle ='Now Playing';
    if(page==0){
      pagetitle='Now Playing';
    }else if(page==1){
      pagetitle='Song List';
    }else if(page==2){
      pagetitle='Favorite Song List';
    }
     Widget bod() {
      
      switch (page) {
        case 0:
          return playingPage();
        case 1:
          return songList();
        case 2:
          return songFav();
        default:
          return playingPage();
      }
    }

    


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * 0.1,
        //leading: BackButton(onPressed: (){Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>hm()));},
        leading: BackButton(),
        title: Text(
          pagetitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        
        /*
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
              title: Text(pagetitle),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  page=0;
                });
              },
            ),
            ListTile(
              title: Text(pagetitle),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
          setState(() {
            page=1;
          });
              },
            ),
            ListTile(
              title: Text(pagetitle),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  page=2;
                });
              },
            ),
          ],
        ),
      ),

      body:bod()
    );
  }
}


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