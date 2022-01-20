import 'package:annime_pro/helper/anime_color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class QuizBattleMultiPlayerResultPage extends StatefulWidget {
  @override
  _QuizBattleMultiPlayerResultPageState createState() => _QuizBattleMultiPlayerResultPageState();
}

class _QuizBattleMultiPlayerResultPageState extends State<QuizBattleMultiPlayerResultPage> {
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
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 60),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(child: Text("Congratulation",style: TextStyle(
                    color: AnimeColor.whiteColor,
                  ),),
                   ),
                ),

                Center(
                  child: Container(child: Text("YOU WON",style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                  ),), margin: EdgeInsets.only(top: 12)),
                ),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 154,left: 68),
            child: Lottie.asset(
              'assets/animation/crown.json',
              width: 88,
              height: 88,
              fit: BoxFit.fill,
            ),
          ),


          Container(
            width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 // width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 52),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(right: 12,top: 220),
                        alignment: Alignment.center,
                        //margin: EdgeInsets.only(top: 100,),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AnimeColor.yellowColor,
                            width: 2,
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





                      Container(child: Text("Yell Yint Aung",style: TextStyle(
                          color: AnimeColor.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                      ),), margin: EdgeInsets.only(top: 12,left: 24)),



                    ],
                  ),
                ),


                Container(
                  //width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(left: 12,top: 200),
                        alignment: Alignment.center,
                        //margin: EdgeInsets.only(top: 100,),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AnimeColor.whiteColor,
                            width: 2,
                          ),
                          image: DecorationImage(
                              image: AssetImage("images/user2.jpg"),
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

                      Container(child: Text("D Bel Nga Sar",style: TextStyle(
                          color: AnimeColor.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                      ),), margin: EdgeInsets.only(top: 12,right: 4,left: 32)),






                    ],
                  ),
                ),


              ],
            ) ,
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(child: Text("! You are winner so you get bonus 50 points",style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),), margin: EdgeInsets.only(top: 380,right: 4,left: 12)),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 420,left: 12,right: 12),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
                border: Border.all(
                    color: Colors.white
                ),
                color: Colors.white
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text("Final Result",style: TextStyle(
                      color: AnimeColor.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 20,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12,left: 12),
                            child: Text("Your points",style: TextStyle(
                                color: AnimeColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),),
                          ),

                          Container(
                            margin:
                            EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 12),
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
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
                                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerSearchPage()));
                                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerResultPage()));
                                },
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                    color: AnimeColor.yellowColor,
                                  ),
                                )),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        color: AnimeColor.primaryColor,
                        width: 2,
                        height: 80,
                      ),

                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12,right: 12),
                            child: Text("Opponent points",style: TextStyle(
                                color: AnimeColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),),
                          ),

                          Container(
                            margin:
                            EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 12),
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
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
                                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerSearchPage()));
                                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerResultPage()));
                                },
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                    color: AnimeColor.whiteColor,
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ),

          Container(
            margin: EdgeInsets.only(left: 12,right: 12,bottom: 8,top: 620),
            height: 52,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AnimeColor.whiteColor,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),

              //print(additionalInformationController.text);
              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OrderHistoryPage()));
              // },
              onPressed: () {  },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 64),
                    width: 16,
                    height: 16,
                    child: Image.asset("images/home_icon.png",width: 16,height: 16,),
                  ),
                  Center(child: Text("Go to back home",style: TextStyle(
                      color: AnimeColor.primaryColor
                  ),)),
                ],
              ),


            ),
          ),



          Container(
            margin: EdgeInsets.only(left: 12,right: 12,bottom: 8,top: 688),
            height: 52,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AnimeColor.blueColor,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),

              //print(additionalInformationController.text);
              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OrderHistoryPage()));
              // },
              onPressed: () {  },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 64),
                    width: 16,
                    height: 16,
                    child: Image.asset("images/facebook_icon.png",width: 16,height: 16,),
                  ),
                  Center(child: Text("Share on Facebook",style: TextStyle(
                      color: AnimeColor.whiteColor
                  ),)),
                ],
              ),
            ),
          ),









        ],
      ),
    );
  }
}
