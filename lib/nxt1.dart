import 'package:appday1/try2.dart';
import 'package:flutter/material.dart';

class nxt1 extends StatefulWidget {
  //const nxt1({super.key});

  final double h;
  final double w;
  List<Game> gameData;
  nxt1(this.h,this.w,this.gameData);
  @override
  State<nxt1> createState() => nxt1State(h,w,gameData);
}

class nxt1State extends State<nxt1> {
  
  double h;
  double w;
  List<Game> gameData;
  nxt1State(this.h,this.w,this.gameData);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal ,
        children: gameData.map((game) {
          return Container(
            height: h,
            width: w*0.3,
            child: Padding(padding: EdgeInsets.only(right: w*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Container(
                height: h*0.8,
                width: w*0.45,
                decoration: BoxDecoration(
                  boxShadow:[BoxShadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(0, 0.2)
                  )],
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AutofillHints.birthday)
                  )
                ),
              )],),),
          );
        }).toList(),
      ),

    );
  }
}