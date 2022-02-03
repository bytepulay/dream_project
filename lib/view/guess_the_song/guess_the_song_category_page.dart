import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/guess_the_song/quiz_song_page.dart';
import 'package:annime_pro/view/guess_the_song/song_category_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';
class GuessTheSongCategoryPage extends StatefulWidget {
  const GuessTheSongCategoryPage({Key? key}) : super(key: key);

  @override
  _GuessTheSongCategoryPageState createState() => _GuessTheSongCategoryPageState();
}

class _GuessTheSongCategoryPageState extends State<GuessTheSongCategoryPage> {
  List<SongCategoryModel> categoryList=[
    SongCategoryModel("images/myanmar_song.png", "Myanmar Song Quiz", "10", "6", "MyanmarSong"),
    SongCategoryModel("images/international_song.png", "International Song Quiz", "10", "5", "InternationalSong"),
    SongCategoryModel("images/k_pop_song.png", "Kpop Song Quiz", "10", "5", "kpopSong")
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeColor.primaryColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/quiz_battle_search.png"),
                    fit: BoxFit.contain
                )
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 52),
            child: Row(
              children: [
                TouchRippleEffect(
                  onTap: (){
                    Navigator.of(context).pop();
                    //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerPage()));
                  },
                  rippleColor: AnimeColor.primaryColor,
                  child: Container(
                    child: Icon(Icons.arrow_back,color: AnimeColor.whiteColor,),
                    margin: EdgeInsets.only(left: 12),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Guess The Songs",
                    style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                ),


              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 80),
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 2,

                  mainAxisSpacing: 5,

                  crossAxisSpacing: 5,

                ),

                itemCount: categoryList.length,

                itemBuilder: (BuildContext context, int index) {

                  return categoryCard(categoryList[index].imageUrl, categoryList[index].title,categoryList[index].playedCount,categoryList[index].maxPlayCount,categoryList[index].songType);

                }),
          )





        ],
      ),
    );
  }

  categoryCard(String image,String title,String gameTimeCount,String maxPlayCount,String songType){
  return TouchRippleEffect(
    rippleColor: AnimeColor.primaryColor,
    onTap: (){
      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizSongPage(songType)));
    },
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          margin: EdgeInsets.only(top: 48,left: 4,right: 4),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              // side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(child: Text(title),),
                Center(
                  child: Container(child: Text(title,style: TextStyle(
                      fontSize: 20,
                      color: AnimeColor.primaryColor
                  ),),
                    margin: EdgeInsets.only(top: 60,bottom: 20),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8,left: 30),
                  child: Text(gameTimeCount+" / "+ maxPlayCount+" Times",style: TextStyle(
                      color: AnimeColor.primaryColor,
                      fontSize: 12
                  ),),
                ),

                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.only(top: 10,right: 12,left: 30),
                  height: 12,
                  width: MediaQuery.of(context).size.width*0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AnimeColor.searchTextColor,
                  ),
                  child: FAProgressBar(
                    backgroundColor: AnimeColor.homeBackground.withOpacity(0.2),
                    progressColor: AnimeColor.primaryColor,
                    currentValue: 3,
                    maxValue: 10,
                    //displayText: '%',
                  ),
                ),

                Center(
                  child: Container(
                    height: 32,
                    width: 100,
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                        color: AnimeColor.primaryColor,
                        borderRadius: BorderRadius.circular(12)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Play Now",style: TextStyle(
                        color: AnimeColor.whiteColor
                      ),)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 4,),
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: AnimeColor.whiteColor,
              //   width: 1,
              // ),
              image: DecorationImage(image: AssetImage(image),
                  fit: BoxFit.contain
              ),
              // shape: BoxShape.circle,
              // color: Colors.white,
              // boxShadow: [
              //
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.1),
              //     spreadRadius: 5,
              //     blurRadius: 5,
              //     offset: Offset(0, 4), // changes position of shadow
              //   ),
              //
              // ],
            ),),
        ),

        // Container(
        //   width: MediaQuery.of(context).size.width*0.45,
        //   height: 200,
        //   margin: EdgeInsets.only(left: 12,right: 12,top: 60),
        //   child: Card(
        //     child: Container(
        //       width: MediaQuery.of(context).size.width*0.45,
        //       child: Column(
        //         children: [
        //           Container(
        //             alignment: Alignment.center,
        //             margin: EdgeInsets.only(top: 20,),
        //             child: Image.asset(image,fit: BoxFit.cover,) ,
        //           ),
        //           Container(
        //             child: Text("Myanmar Song Quiz"),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

      ],
    ),
  );
  }

}
