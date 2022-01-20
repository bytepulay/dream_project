import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/Quiz_battle_multi_player_page/quiz_battle_multi_player_result.dart';
import 'package:annime_pro/view/Quiz_battle_multi_player_page/quiz_battle_user_search_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class QuizBattleMultiPlayerPage extends StatefulWidget {
  @override
  _QuizBattleMultiPlayerPageState createState() => _QuizBattleMultiPlayerPageState();
}

class _QuizBattleMultiPlayerPageState extends State<QuizBattleMultiPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeColor.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TouchRippleEffect(
            rippleColor: AnimeColor.primaryColor,
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.only(top: 40,left: 20),
              child: Icon(Icons.arrow_back,color: AnimeColor.whiteColor,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, left: 12, right: 12),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
                //color: AnimeColor.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28)),
                image: DecorationImage(
                    image: AssetImage(
                      "images/weekly_battle_upper.png",
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 12, right: 12),
            width: MediaQuery.of(context).size.width,
            height: 480,
            decoration: BoxDecoration(
                color: AnimeColor.whiteColor,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "MULTIPLAYER",
                    style: TextStyle(
                        color: AnimeColor.BlackColor.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(top: 12, left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 20),
                  child: Text(
                    "Quiz Battle Challange",
                    style: TextStyle(
                        color: AnimeColor.BlackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AnimeColor.primaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12)),
                  height: 52,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            width: 20,
                            height: 20,
                            child: Image.asset("images/question.png",width: 20,height: 20,),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "10 questions",
                              style: TextStyle(
                                  color: AnimeColor.BlackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "images/point_icon.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4, right: 12),
                            child: Text(
                              "+100 points",
                              style: TextStyle(
                                  color: AnimeColor.BlackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "DESCRIPTIONS",
                    style: TextStyle(
                        color: AnimeColor.BlackColor.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 20),
                  child: Text(
                    "Quiz battle challenge mode, you can play with an opponent randomly chosen by the system. Beat them down by choosing correct answers. The High scorer will be announced as winner. Winner have match points and plus bonus 50 points.",
                    style: TextStyle(
                      color: AnimeColor.BlackColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        margin: EdgeInsets.only(right: 12),
                        alignment: Alignment.center,
                        //margin: EdgeInsets.only(top: 100,),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AnimeColor.whiteColor,
                            width: 1,
                          ),
                          image: DecorationImage(
                              image: AssetImage("images/user1.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          "Aye Say Pal Hyg",
                          style: TextStyle(
                              color: AnimeColor.BlackColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 20),
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      // style: ElevatedButton.styleFrom(
                      //     primary: AnimeColor.primaryColor,
                      //     // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      //     textStyle: TextStyle(
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.bold)),

                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(AnimeColor.primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      side: BorderSide(color: AnimeColor.primaryColor)))),
                      // },
                      onPressed: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerSearchPage()));
                       // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerResultPage()));
                      },
                      child: Text(
                        "Start Battle",
                        style: TextStyle(
                          color: AnimeColor.whiteColor,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
