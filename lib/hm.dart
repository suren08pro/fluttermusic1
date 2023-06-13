import 'package:appday1/nowplaying.dart';
import 'package:flutter/material.dart';

class hm extends StatefulWidget {
  const hm({super.key});

  @override
  State<hm> createState()=> new hmState();
  
}

class hmState extends State<hm>{
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * 0.1,
        title: Text('Music Player '),
        leading: Icon(
          Icons.navigate_before_sharp,
          size: 54,
          color: Colors.amber,
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.music_note),
        ],
      ),
      backgroundColor: Color.fromARGB(19, 200, 255, 2),
      body: Column(
        children: [
          Container(
            height: h * 0.4,
            width: w,
            color: const Color.fromARGB(255, 253, 253, 253),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  height: h * 0.2,
                  width: w * 0.375,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 7, 7),
                      borderRadius: BorderRadius.circular(90)),
                  child: Icon(
                    Icons.play_circle,
                    size: h * 0.2,
                    color: Colors.amber,
                  ),
                  //child:
                  //Text("Chla ja",style:TextStyle(color: const Color.fromARGB(255, 255, 64, 172),fontSize: 34),),
                  //decoration: BoxDecoration(color: Colors.lime,borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      vertical: h * 0.013,
                      horizontal: 0,
                    ),
                    height: h * 0.026,
                    width: w * 0.25,
//                  color: Colors.black,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: (){ Navigator.of(context).push( MaterialPageRoute(builder: (context)=> nowplaying()));},
                      child: Text(
                        "PLAY",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.amber),
                      ),
                    ))
              ],
            ),
          ),
          Container(
              height: h * 0.5,
              width: w,
              color: Color.fromARGB(255, 255, 213, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.375,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Karan Aujla",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.03,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.375,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Sharry Maan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.03,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.375,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Ammy Virk",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.03,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.375,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Jordan Sandhu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.03,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.375,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Navaan Sandhu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.03,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        height: h * 0.05,
                        width: w * 0.38,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 98, 0),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Satinder Sartaj",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: h * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}