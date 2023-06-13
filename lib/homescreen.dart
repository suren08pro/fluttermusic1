import 'package:appday1/try3.dart';
import 'package:flutter/material.dart';
import 'try2.dart';

class Homescreen extends StatefulWidget{
  const Homescreen({super.key});
  
  
  /*@override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Projext'),
        leading: Icon(
          Icons.menu,
          size: 54,
          color: Colors.amber,
        ),
        actions: [Icon(Icons.card_travel), Icon(Icons.notifications)],
      ),
      backgroundColor: Color.fromARGB(22, 23, 43, 43),
      body: Center(key: key,),
      
    );
    
  }*/
  @override
  State<Homescreen> createState()=> HomescreenState();
}
class HomescreenState extends State<Homescreen>{
  var h,w,p;
  @override
  void initState(){
    super.initState();
    p=0;
  }
  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: <Widget>[
        featuredGameWidget(),
        gradientBoxWidget(),
        topLayerWidget()
      ]),
    );
  }
  Widget featuredGameWidget(){
    return SizedBox(
      height:h*0.5,
      width:w,
      child:PageView(
        onPageChanged: (index){
          setState(() {
          p=index;
          });
        },
        children: featuredGames.map((_game){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_game.coverImage.url),
              ),
            ),
          );
        }).toList(),
      )
    );
  }
  Widget gradientBoxWidget(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: h*0.80,
        width: w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(35, 45, 60, 1.0),Colors.transparent,],
          stops: [0.65,1.0],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          )
        ),
      ),
    );
  }
  Widget topLayerWidget(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: w*0.05,vertical: h*0.005),
      child: Column(mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [topBarWedget(),
      SizedBox(height: h*0.13),
      featuredGameInfoWidget(),
      Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: h*0.001,),child: ScrollableGameWidget(h*0.24,w,true,games),),
      Padding(padding: const EdgeInsets.only(bottom: 5.6),child: featuredGameBannerWidget(),),
      ScrollableGameWidget(h*2.4, w, false, games2),],),);
  } 
  Widget topBarWedget(){
    return SizedBox(height: h*0.13,child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Icon(Icons.menu,color: Colors.white,size: 30,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Icon(Icons.search,color: Colors.white,size: 30,),SizedBox(width: w*0.3,),Icon(Icons.notifications_none,color: Colors.white,size: 30,),Icon(Icons.girl,color: Colors.amber,)],)],  ) ,);
  }
  Widget featuredGameInfoWidget(){
    return SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [Text(featuredGames[p].title,maxLines: 2,style:TextStyle(color: Colors.white,fontSize: h*0.04),),
                                    Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize: MainAxisSize.max,
                                        children: featuredGames.map((_game){double redius=h*0.004;bool isactive=_game.title==featuredGames[p].title;
                                                    return Container(margin: EdgeInsets.only(right: w*0.012),height: redius*2,width: redius*2,
                                                          decoration: BoxDecoration(color: isactive?Colors.green:Colors.grey,borderRadius: BorderRadius.circular(100),),
                                                          );
                                                          }).toList(),
                                                          )
                                                          ],
                                                          ),
                                                          );
  }
  Widget featuredGameBannerWidget(){
    return Container(height: h*0.13,width: w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(featuredGames[2].coverImage.url,))),);
  }
}