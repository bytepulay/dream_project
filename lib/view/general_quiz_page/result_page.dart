import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/home_page/home_bottom_navigation.dart';
import 'package:annime_pro/view/leader_board_page/leader_board_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';
class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                 // color: AnimeColor.primaryColor,
                  decoration: BoxDecoration(
                    //color: AnimeColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28)
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                      "images/leader_board_upper_background.png",
                  ),
             fit: BoxFit.cover
    )
                  ),

                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/outer_circle.png"),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/inner_circle.png"),
                          fit: BoxFit.contain
                        )
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 114),
                    width: 132,
                    height: 132,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text("Your Score",style: TextStyle(
                            color: AnimeColor.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        Container(
                          child: RichText(text: TextSpan(
                          children: [
                            WidgetSpan(child: Text("150",style: TextStyle(
                              color: AnimeColor.primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),)),
                            WidgetSpan(child: Text(" pt",style: TextStyle(
                                color: AnimeColor.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),))
                          ]

                          ),

                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/inner_circle1.png"),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 320,left: 24,right: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 146,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 24,top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MyBullet(),
                                      SizedBox(width: 8,),
                                      Container(
                                        child: Text("100%",style: TextStyle(
                                          color: AnimeColor.BlackColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ],
                                  ),


                                  Container(
                                    child: Text("Completation",style: TextStyle(
                                        color: AnimeColor.BlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MyBullet(),
                                      SizedBox(width: 8,),
                                      Container(
                                        child: Text("5",style: TextStyle(
                                          color: AnimeColor.BlackColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ],
                                  ),


                                  Container(
                                    margin: EdgeInsets.only(right: 12),
                                    child: Text("Total Questions",style: TextStyle(
                                        color: AnimeColor.BlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                    ),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 24,right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MyBulletOne(),
                                      SizedBox(width: 8,),
                                      Container(
                                        child: Text("3",style: TextStyle(
                                            color: AnimeColor.greenColor
                                        ),),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    child: Text("correct",style: TextStyle(
                                        color: AnimeColor.greenColor
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MyBulletTwo(),
                                      SizedBox(width: 8,),
                                      Container(
                                        child: Text("2",style: TextStyle(
                                            color: AnimeColor.primaryColor
                                        ),),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    child: Text("wrong",style: TextStyle(
                                        color: AnimeColor.primaryColor
                                    ),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ),

              ],
            ),

            SizedBox(height: 40,),

            Container(
              margin: EdgeInsets.only(left: 32,right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TouchRippleEffect(
                        onTap: (){

                        },
                        rippleColor: AnimeColor.primaryColor,
                        child: Container(
                          child: Image.asset("images/play_again.png",fit: BoxFit.contain,),
                          width: 48,
                          height: 48,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Play Again",style: TextStyle(
                          color: AnimeColor.primaryColor
                        ),),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      TouchRippleEffect(
                        onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: HomeBottomNavigation()));
                        },
                        rippleColor: AnimeColor.primaryColor,
                        child: Container(
                          child: Image.asset("images/home_icon.png",fit: BoxFit.contain,),
                          width: 48,
                          height: 48,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Home",style: TextStyle(
                            color: AnimeColor.primaryColor
                        ),),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      TouchRippleEffect(
                        onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: LeaderBoardPage()));
                        },
                        rippleColor: AnimeColor.primaryColor,
                        child: Container(
                          child: Image.asset("images/leader_board.png",fit: BoxFit.contain,),
                          width: 48,
                          height: 48,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Leaderboard",style: TextStyle(
                            color: AnimeColor.primaryColor
                        ),),
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40,right: 40,bottom: 8,top: 20),
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
                      margin: EdgeInsets.only(right: 32),
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


            Container(
              margin: EdgeInsets.only(left: 40,right: 40,bottom: 8,top: 12),
              height: 52,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AnimeColor.yellowColor,
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
                          margin: EdgeInsets.only(right: 32),
                          width: 16,
                          height: 16,
                          child: Image.asset("images/point_icon.png",width: 16,height: 16,),
                        ),
                        Center(child: Text("Free 200 Points",style: TextStyle(
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

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: AnimeColor.BlackColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

class MyBulletOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: AnimeColor.greenColor,
        shape: BoxShape.circle,
      ),
    );
  }
}


class MyBulletTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: AnimeColor.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
