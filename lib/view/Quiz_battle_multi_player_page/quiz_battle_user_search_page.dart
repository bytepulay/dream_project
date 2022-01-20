import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/Quiz_battle_multi_player_page/quix_battle_multi_player_question_answer_page.dart';
import 'package:annime_pro/view/Quiz_battle_multi_player_page/quiz_battle_multi_player_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';
import 'dart:async';
class QuizBattleMultiPlayerSearchPage extends StatefulWidget {
  @override
  _QuizBattleMultiPlayerSearchPageState createState() => _QuizBattleMultiPlayerSearchPageState();
}

class _QuizBattleMultiPlayerSearchPageState extends State<QuizBattleMultiPlayerSearchPage> {
int start=5;
bool wait = false;



  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer _timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          wait = true;
        });
      } else {
        setState(() {
          start--;
          print("start is $start" );
          if(start==0){
            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: MultiPlayerBattleQuestionAnswerPage()));
          }

        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();

    super.initState();
  }
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
                  child: Text("Quiz Battle Challange",
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
            margin: EdgeInsets.only(top: 200,left: MediaQuery.of(context).size.width*0.5),
            child: Text(start.toString(),style: TextStyle(
                color: AnimeColor.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 40
            ),),
          ),


          // Container(
          //   margin: EdgeInsets.only(top: 200),
          //   child: Text(start.toString(),style: TextStyle(
          //     color: AnimeColor.whiteColor,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 40
          //   ),),
          // ),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: 32,right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 12,top: 20,bottom: 8),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.yellow,
                          border: Border.all(width: 1.0, color: AnimeColor.whiteColor),
                          // ),
                          image: DecorationImage(
                              image: AssetImage("images/user1.jpg",),
                              fit: BoxFit.fill
                          )
                      ),
                    ),

                    Container(
                      child: Text("You",style: TextStyle(
                        color: AnimeColor.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      margin: EdgeInsets.only(left: 12),
                    ),
                  ],
                ),
                
                Container(
                  width: 44,
                  height: 44,
                  child: Image.asset("images/vs.png",color: AnimeColor.whiteColor,),
                ),
                
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(left: 12,top: 14,bottom: 8),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      //color: Colors.yellow,
                      border: Border.all(width: 1.0, color: AnimeColor.whiteColor),
                      // ),
                      image: DecorationImage(
                          image: AssetImage("images/search_people.png",),
                          fit: BoxFit.fill
                      )
                  ),
                ),

                // Container(
                //   margin: EdgeInsets.only(left: 8),
                //   child: Text("Quiz Battle Challange",
                //     style: TextStyle(
                //       color: AnimeColor.whiteColor,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //     ),),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
