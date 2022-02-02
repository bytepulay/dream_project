// @dart=2.9
import 'package:admob_flutter/admob_flutter.dart';
import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/services/admob_service.dart';
import 'package:annime_pro/view/Quiz_battle_multi_player_page/quiz_battle_multi_player_page.dart';
import 'package:annime_pro/view/general_quiz_page/general_quiz_page.dart';
import 'package:annime_pro/view/general_quiz_page/test_quiz.dart';
import 'package:annime_pro/view/guess_the_song/quiz_song_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  var ams = AdMobService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Admob.initialize();
   // Admob.initialize(testDeviceIds: ["ca-app-pub-8143831381550467~4121292115"]);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: Text(""),
        //   automaticallyImplyLeading: false,
        // ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      color: AnimeColor.primaryColor,
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      // child: Center(
                      //   child: Text(
                      //     "Home",
                      //     style: TextStyle(color: Colors.white, fontSize: 18.0),
                      //   ),
                      ),
                   // ),



                    Container(
                      child: Positioned(
                        top: 24,
                        left: 8,
                        right: 8,
                        child: Container(
                          height: 70,
                          //color: AnimeColor.primaryColor,
                          //padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                  ),
                                ],
                                border: Border.all(
                                  // color: Colors.grey.withOpacity(0.5), width: 1.
                                    color: Colors.white
                                ),
                                color: Colors.white),

                            //
                            child:Container(
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.35,
                                          height: 32,
                                          margin: EdgeInsets.only(left: 20,top: 20,bottom: 16),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 40.0,top: 8,bottom: 8),
                                            child: Text("180000 point",style: TextStyle(
                                                fontSize: 10,
                                                color: AnimeColor.primaryColor
                                            ),),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(32.0),
                                            border: Border.all(
                                                color: AnimeColor.primaryColor,
                                                width: 1
                                            ),
                                            // color: Colors.white)
                                          )

                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 8,top: 6,right: 8
                                        ),
                                        child: Text("Anime",style: TextStyle(
                                            color: AnimeColor.primaryColor
                                        ),),
                                      ),

                                      Container(
                                          width: MediaQuery.of(context).size.width*0.35,
                                          height: 32,
                                          margin: EdgeInsets.only(left:4,top: 20,bottom: 16,right: 12,),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Naing Lin Tun",style: TextStyle(
                                                fontSize: 10,
                                                color: AnimeColor.primaryColor
                                            ),),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(32.0),
                                            border: Border.all(
                                                color: AnimeColor.primaryColor,
                                                width: 1
                                            ),
                                            // color: Colors.white)
                                          )

                                      ),


                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 48,
                                        height: 48,
                                        margin: EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            //color: Colors.yellow,
                                            border: Border.all(width: 1.0, color: AnimeColor.primaryColor),
                                            // ),
                                            image: DecorationImage(
                                                image: AssetImage("images/point.png",),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                        // child: Image.asset(
                                        //  "images/user1.jpg",fit: BoxFit.contain,
                                        //   width: 80,
                                        //   height: 80,
                                        // ),
                                      ),

                                      Container(
                                        width: 48,
                                        height: 48,
                                        margin: EdgeInsets.only(top: 10,bottom: 8,right: 8),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            //color: Colors.yellow,
                                            border: Border.all(width: 1.0, color: AnimeColor.primaryColor),
                                            // ),
                                            image: DecorationImage(
                                                image: AssetImage("images/user1.jpg",),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                        // child: Image.asset(
                                        //  "images/user1.jpg",fit: BoxFit.contain,
                                        //   width: 80,
                                        //   height: 80,
                                        // ),
                                      ),
                                    ],

                                  )



                                ],

                              ),
                            ),



                          ),
                        ),

                      ),
                    ),
                  ],

                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 8,top: 12),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/game.png",width: 32,height: 32,),
                      margin: EdgeInsets.only(left: 2),),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Let Play",style: TextStyle(
                        color: AnimeColor.primaryColor,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),

              TouchRippleEffect(
                rippleColor: AnimeColor.primaryColor,
                onTap: (){
                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: RadioButton()));
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: GeneralQuizPage()));
                },
                child: Container(
                  height: 140,
                  margin: EdgeInsets.only(left: 12,right: 12,top: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                              "images/red_container_image.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          child: Image.asset("images/question.png",width: 80,height: 80,),
                          margin: EdgeInsets.only(left: 20),),

                      Container(
                        margin: EdgeInsets.only(left: 20,top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            child: Text("General Anime Quiz",style: TextStyle(
                              color: AnimeColor.whiteColor,
                              fontSize: 16
                            ),),
                          ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text("6/10 Times",style: TextStyle(
                                color: AnimeColor.whiteColor,
                                fontSize: 12
                              ),),
                            ),
                            // RoundedProgressBar(
                            //     // childLeft: Text("$percent%",
                            //     //     style: TextStyle(color: Colors.white)),
                            //     percent: 10,
                            //
                            //
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 12),
                                  height: 12,
                                  width: MediaQuery.of(context).size.width*0.55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AnimeColor.searchTextColor,
                                  ),
                                  child: FAProgressBar(
                                    backgroundColor: AnimeColor.whiteColor.withOpacity(0.5),
                                    progressColor: AnimeColor.whiteColor,
                                    currentValue: 6,
                                    maxValue: 10,
                                    //displayText: '%',
                                  ),
                                )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12,),
              AdmobBanner(adUnitId: ams.getBannerAdId(), adSize: AdmobBannerSize.BANNER),

              Container(
                margin: EdgeInsets.only(left: 12,top: 28),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/battle.png",width: 32,height: 32,),
                      margin: EdgeInsets.only(left: 2),),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Weekly Battle",style: TextStyle(
                        color: AnimeColor.primaryColor,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 180,
              //   margin: EdgeInsets.only(bottom: 20,top: 4),
              //   // padding: EdgeInsets.only(left: 8,right: 8),
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       battleList(),
              //       battleList(),
              //       battleList(),
              //       battleList(),
              //       battleList(),
              //       battleList()
              //     ],
              //   ),
              // ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                margin: EdgeInsets.only(bottom: 20,top: 4),
                // padding: EdgeInsets.only(left: 8,right: 8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    battleList(),
                    battleList(),
                    battleList(),
                    battleList(),
                    battleList(),
                    battleList()
                  ],
                ),
              ),





              Container(
                margin: EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/music_red.png",width: 32,height: 32,),
                      margin: EdgeInsets.only(left: 2),),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Guess Anime Songs",style: TextStyle(
                        color: AnimeColor.primaryColor,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),
              //
              TouchRippleEffect(
                rippleColor: AnimeColor.pinkColor,
                onTap: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizSongPage()));
                },
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 12,right: 12,top: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                      image: DecorationImage(

                          image: AssetImage(
                              "images/song_background.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("images/music.png",width: 80,height: 80,),
                        margin: EdgeInsets.only(left: 20),),

                      Container(
                        margin: EdgeInsets.only(left: 20,top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text("Guess Anime Songs",style: TextStyle(
                                  color: AnimeColor.whiteColor,
                                  fontSize: 16
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text("6/10 Times",style: TextStyle(
                                  color: AnimeColor.whiteColor,
                                  fontSize: 12
                              ),),
                            ),
                            // RoundedProgressBar(
                            //     // childLeft: Text("$percent%",
                            //     //     style: TextStyle(color: Colors.white)),
                            //     percent: 10,
                            //
                            //
                            Container(
                              margin: EdgeInsets.only(top: 10,right: 12),
                              height: 12,
                              width: MediaQuery.of(context).size.width*0.55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AnimeColor.searchTextColor,
                              ),
                              child: FAProgressBar(
                                backgroundColor: AnimeColor.whiteColor.withOpacity(0.5),
                                progressColor: AnimeColor.whiteColor,
                                currentValue: 6,
                                maxValue: 10,
                                //displayText: '%',
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(left: 12,top: 20),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/quiz_battle.png",width: 32,height: 32,),
                      margin: EdgeInsets.only(left: 2),),
                    Container(
                      margin: EdgeInsets.only(left: 8,),
                      child: Text("Quiz Battle(Multiplayers)",style: TextStyle(
                        color: AnimeColor.primaryColor,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),


              TouchRippleEffect(
                rippleColor: AnimeColor.primaryColor,
                onTap: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: QuizBattleMultiPlayerPage()));
                },
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 12,left: 4,right: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                      // border: Border.all(
                      //   // color: Colors.grey.withOpacity(0.5), width: 1.
                      //     color: Colors.white
                      // ),
                      image: DecorationImage(
                          image: AssetImage(
                              "images/quiz_multiplayer_background.png"
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(left: 20,top: 30,bottom: 8),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.yellow,
                                border: Border.all(width: 1.0, color: AnimeColor.primaryColor),
                                // ),
                                image: DecorationImage(
                                    image: AssetImage("images/left_turn_face.png",),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),

                          Container(child: Image.asset("images/vs.png",width: 44,height: 44,),
                          margin: EdgeInsets.only(top: 30),),

                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(right: 20,top: 30,bottom: 8),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.yellow,
                                border: Border.all(width: 1.0, color: AnimeColor.primaryColor),
                                // ),
                                image: DecorationImage(
                                    image: AssetImage("images/right_turn_face.png",),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),


                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text("3/10 Times",style: TextStyle(
                                  color: AnimeColor.primaryColor,
                                  fontSize: 12
                              ),),
                            ),

                            SizedBox(width: 20,),
                            Container(
                              margin: EdgeInsets.only(top: 10,right: 12),
                              height: 12,
                              width: MediaQuery.of(context).size.width*0.55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AnimeColor.searchTextColor,
                              ),
                              child: FAProgressBar(
                                backgroundColor: AnimeColor.whiteColor.withOpacity(0.2),
                                progressColor: AnimeColor.primaryColor,
                                currentValue: 3,
                                maxValue: 10,
                                //displayText: '%',
                              ),
                            )
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(left: 12,top: 20),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/game.png",width: 32,height: 32,),
                      margin: EdgeInsets.only(left: 2),),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Choose Your Favorite Quiz",style: TextStyle(
                        color: AnimeColor.primaryColor,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),

              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Stack(
              //         children: [
              //           Container(
              //             width: MediaQuery
              //                 .of(context)
              //                 .size
              //                 .width*0.45,
              //             height: 200,
              //             margin: EdgeInsets.only(top: 60,left: 12,),
              //             decoration: BoxDecoration(
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.grey.withOpacity(0.5),
              //                     spreadRadius: 2,
              //                     blurRadius: 5,
              //                   ),
              //                 ],
              //                 color: Colors.white,
              //                 image: DecorationImage(
              //                     image: AssetImage("images/favorite_quiz.png",),
              //                     fit: BoxFit.fill
              //                 ),
              //                 borderRadius: BorderRadius.circular(
              //                     12
              //                 )
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Center(
              //                   child: Container(child: Text("Nautro Quiz",style: TextStyle(
              //                       fontSize: 20,
              //                       color: AnimeColor.whiteColor
              //                   ),),
              //                     margin: EdgeInsets.only(top: 60,),),
              //                 ),
              //                 Container(
              //                   margin: EdgeInsets.only(top: 8,left: 30),
              //                   child: Text("3/10 Times",style: TextStyle(
              //                       color: AnimeColor.whiteColor,
              //                       fontSize: 10
              //                   ),),
              //                 ),
              //
              //                 SizedBox(width: 20,),
              //                 Container(
              //                   margin: EdgeInsets.only(top: 10,right: 12,left: 30),
              //                   height: 12,
              //                   width: MediaQuery.of(context).size.width*0.75,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(12),
              //                     color: AnimeColor.searchTextColor,
              //                   ),
              //                   child: FAProgressBar(
              //                     backgroundColor: AnimeColor.whiteColor.withOpacity(0.2),
              //                     progressColor: AnimeColor.whiteColor,
              //                     currentValue: 3,
              //                     maxValue: 10,
              //                     //displayText: '%',
              //                   ),
              //                 ),
              //
              //                 Center(
              //                   child: Container(
              //                     height: 32,
              //                     width: 120,
              //                     margin: EdgeInsets.only(top: 20),
              //                     decoration: BoxDecoration(
              //                         color: AnimeColor.whiteColor,
              //                         borderRadius: BorderRadius.circular(20)
              //
              //                     ),
              //                     child: Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: Center(child: Text("Play Now",style: TextStyle(
              //                         color: AnimeColor.primaryColor
              //                       ),)),
              //                     ),
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),

              //           Container(
              //             width: 80,
              //             height: 80,
              //             margin: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width*0.16),
              //             decoration: BoxDecoration(
              //               image: DecorationImage(image: AssetImage("images/image1.jpg",),
              //                   fit: BoxFit.fill
              //               ),
              //               shape: BoxShape.circle,
              //               color: Colors.white,
              //               boxShadow: [
              //                 BoxShadow(
              //                   color: Colors.grey.withOpacity(0.1),
              //                   spreadRadius: 5,
              //                   blurRadius: 5,
              //                   offset: Offset(0, 4), // changes position of shadow
              //                 ),
              //               ],
              //             ),)
              //         ],
              //       ),
              //
              //
              //
              //       Stack(
              //         children: [
              //           Container(
              //             width: MediaQuery
              //                 .of(context)
              //                 .size
              //                 .width*0.45,
              //             height: 200,
              //             margin: EdgeInsets.only(top: 60,right: 12),
              //             decoration: BoxDecoration(
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.grey.withOpacity(0.5),
              //                     spreadRadius: 2,
              //                     blurRadius: 5,
              //                   ),
              //                 ],
              //                 color: Colors.white,
              //                 image: DecorationImage(
              //                     image: AssetImage("images/favorite_quiz.png",),
              //                     fit: BoxFit.fill
              //                 ),
              //                 borderRadius: BorderRadius.circular(
              //                     12
              //                 )
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Center(
              //                   child: Container(child: Text("One Piece Quiz",style: TextStyle(
              //                       fontSize: 20,
              //                       color: AnimeColor.whiteColor
              //                   ),),
              //                     margin: EdgeInsets.only(top: 60,),),
              //                 ),
              //                 Container(
              //                   margin: EdgeInsets.only(top: 8,left: 30),
              //                   child: Text("3/10 Times",style: TextStyle(
              //                       color: AnimeColor.whiteColor,
              //                       fontSize: 10
              //                   ),),
              //                 ),
              //
              //                 SizedBox(width: 20,),
              //                 Container(
              //                   margin: EdgeInsets.only(top: 10,right: 12,left: 30),
              //                   height: 12,
              //                   width: MediaQuery.of(context).size.width*0.75,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(12),
              //                     color: AnimeColor.searchTextColor,
              //                   ),
              //                   child: FAProgressBar(
              //                     backgroundColor: AnimeColor.whiteColor.withOpacity(0.2),
              //                     progressColor: AnimeColor.whiteColor,
              //                     currentValue: 3,
              //                     maxValue: 10,
              //                     //displayText: '%',
              //                   ),
              //                 ),
              //
              //                 Center(
              //                   child: Container(
              //                     height: 32,
              //                     width: 120,
              //                     margin: EdgeInsets.only(top: 20),
              //                     decoration: BoxDecoration(
              //                         color: AnimeColor.whiteColor,
              //                         borderRadius: BorderRadius.circular(20)
              //
              //                     ),
              //                     child: Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: Center(child: Text("Play Now",
              //                           style: TextStyle(
              //                               color: AnimeColor.primaryColor
              //                           ))),
              //                     ),
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),

                        // Container(
                        //   width: 80,
                        //   height: 80,
                        //   margin: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width*0.13),
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(image: AssetImage("images/image2.jpg",),
                        //         fit: BoxFit.fill
                        //     ),
                        //     shape: BoxShape.circle,
                        //     color: Colors.white,
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.1),
                        //         spreadRadius: 5,
                        //         blurRadius: 5,
                        //         offset: Offset(0, 4), // changes position of shadow
                        //       ),
                        //     ],
                        //   ),)
                    //   ],
                    // ),

              //     ],
              //   ),
              // ),

              SizedBox(height: 4,),

              Container(
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height*0.8,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 12),
                  crossAxisSpacing: 4,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (500),
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  children: [

                    favoriteQuiz("Nautro Quiz","images/image1.jpg"),
                    favoriteQuiz("One PieceQuiz","images/image2.jpg"),
                    favoriteQuiz("Nautro Quiz 1","images/image1.jpg"),
                    favoriteQuiz("Nautro Quiz 2","images/image2.jpg"),
                    favoriteQuiz("Nautro Quiz 3 ","images/image2.jpg"),
                    favoriteQuiz("Nautro Quiz 4","images/image1.jpg"),
                    favoriteQuiz("Nautro Quiz 5","images/image2.jpg"),
                    favoriteQuiz("Nautro Quiz 6","images/image2.jpg"),


                  ],
                ),
              ),

              SizedBox(height: 20,)






            ],

          ),
        ),


      ),
    );

  }

  Widget _selectedWidget(String image,String str){
    return Container(
      height: 80,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 12,bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30.0),
          //     bottomLeft: Radius.circular(30.0),
          //     //bottomRight: Radius.circular(30.0)
          // ),
          color: AnimeColor.yellowColor.withOpacity(.4)
      ),
      child: Column(
        children: [
          Image.asset(image,width: 24,height: 24,),
          Text(str),
        ],
      ),
    );
  }

  favoriteQuiz(String title,String imageLink){
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 40,left: 4,right: 4),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],

                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/favorite_quiz.png",),
                    fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.circular(
                    12
                )
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(child: Text(title,style: TextStyle(
                        fontSize: 20,
                        color: AnimeColor.whiteColor
                    ),),
                      margin: EdgeInsets.only(top: 60,),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8,left: 30),
                    child: Text("3/10 Times",style: TextStyle(
                        color: AnimeColor.whiteColor,
                        fontSize: 10
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
                      backgroundColor: AnimeColor.whiteColor.withOpacity(0.2),
                      progressColor: AnimeColor.whiteColor,
                      currentValue: 3,
                      maxValue: 10,
                      //displayText: '%',
                    ),
                  ),

                  Center(
                    child: Container(
                      height: 32,
                      width: 120,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: AnimeColor.whiteColor,
                          borderRadius: BorderRadius.circular(20)

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Play Now")),
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
              width: 80,
              height: 80,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 4,),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AnimeColor.whiteColor,
                  width: 1,
                ),
                image: DecorationImage(image: AssetImage(imageLink),
                    fit: BoxFit.contain
                ),
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [

                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 4), // changes position of shadow
                  ),

                ],
              ),),
          ),
        ],

      ),
    );



  }

  battleList(){
    return Container(
      //margin: EdgeInsets.only(left: 4,right: 4),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 12,left: 12,right: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
                // border: Border.all(
                //   // color: Colors.grey.withOpacity(0.5), width: 1.
                //     color: Colors.white
                // ),
                image: DecorationImage(
                    image: AssetImage(
                        "images/battle_background.png"
                    ),
                    fit: BoxFit.fill
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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

                    Container(child: Text("Naing Lin Tun",style: TextStyle(
                        color: AnimeColor.whiteColor
                    ),),
                      margin: EdgeInsets.only(left: 20),),

                  ],
                ),

                Column(
                  children: [

                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 20,bottom: 8,right: 20),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.yellow,
                          border: Border.all(width: 1.0, color: AnimeColor.primaryColor),
                          // ),
                          image: DecorationImage(
                              image: AssetImage("images/user2.jpg",),
                              fit: BoxFit.fill
                          )
                      ),
                    ),

                    Container(child: Text("Yell Yint Aung",style: TextStyle(
                        color: AnimeColor.primaryColor
                    ),),
                      margin: EdgeInsets.only(right: 12),),
                  ],
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 12,top: 4,),
            child: Text("12 January 2021 (Wednesday 2:30 pm)",style: TextStyle(
              color: AnimeColor.primaryColor
            ),),
          ),





        ],
      ),
    );


  }


}
