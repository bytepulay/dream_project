import 'package:annime_pro/helper/anime_color.dart';
import 'package:flutter/material.dart';

class LeaderBoardPage extends StatefulWidget {
  @override
  _LeaderBoardPageState createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            color: AnimeColor.primaryColor,
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("images/leaders_image.png",fit: BoxFit.contain,width: MediaQuery.of(context).size.width*0.5,height: 300,),margin: EdgeInsets.only(top: 120,left: 20,right: 20),),


          Container(
            margin: EdgeInsets.only(top: 152,left: MediaQuery.of(context).size.width*0.7),
            child: Column(
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
                    image: DecorationImage(image: AssetImage("images/user1.jpg"),
                        fit: BoxFit.cover
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

                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text("Naing Lin Tun",style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontSize: 10
                  ),),
                )

              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 40,left: MediaQuery.of(context).size.width*0.44),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      alignment: Alignment.center,
                      child: Image.asset("images/king.png"),
                      width: 24,
                      height: 24,
                    ),
                    Container(
                      width: 52,
                      height: 52,
                      margin: EdgeInsets.only(right: 12,top: 16),
                      alignment: Alignment.center,
                      //margin: EdgeInsets.only(top: 100,),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AnimeColor.whiteColor,
                          width: 1,
                        ),
                        image: DecorationImage(image: AssetImage("images/user1.jpg"),
                            fit: BoxFit.cover
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

                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text("Khaing Zin Thwal",style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontSize: 10
                  ),),
                )

              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 124,left: MediaQuery.of(context).size.width*0.1),
            child: Column(
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
                    image: DecorationImage(image: AssetImage("images/user1.jpg"),
                        fit: BoxFit.cover
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

                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text("Yell Yint Aung",style: TextStyle(
                      color: AnimeColor.whiteColor,
                      fontSize: 10
                  ),),
                )

              ],
            ),
          ),


          // Stack(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //        margin: EdgeInsets.only(top: 160,left: MediaQuery.of(context).size.width*0.3),
          //       child: Positioned(
          //         top: 160,
          //         // left: 24,
          //         child: Container(
          //           width: 114,
          //           height: 220,
          //           decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("images/leader2.png"),
          //                   fit: BoxFit.fill)),
          //           child: Column(
          //             children: [
          //               Container(
          //                 child: Text(
          //                   "2",
          //                   style:
          //                   TextStyle(color: AnimeColor.whiteColor, fontSize: 60),
          //                 ),
          //                 margin: EdgeInsets.only(top: 60),
          //               ),
          //               Container(
          //                 child: Text(
          //                   "1200 points",
          //                   style:
          //                   TextStyle(color: AnimeColor.whiteColor, fontSize: 12),
          //                 ),
          //                 margin: EdgeInsets.only(top: 4),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.only(top: 140,left: MediaQuery.of(context).size.width*0.44),
          //       child: Positioned(
          //         // top: 140,
          //         // left: 124,
          //         child: Container(
          //           width: 114,
          //           height: 240,
          //           decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("images/leader1.png"),
          //                   fit: BoxFit.contain)),
          //           child: Column(
          //             children: [
          //               Container(
          //                 child: Text(
          //                   "1",
          //                   style:
          //                   TextStyle(color: AnimeColor.whiteColor, fontSize: 60),
          //                 ),
          //                 margin: EdgeInsets.only(top: 20),
          //               ),
          //               Container(
          //                 child: Text(
          //                   "1500 points",
          //                   style:
          //                   TextStyle(color: AnimeColor.whiteColor, fontSize: 12),
          //                 ),
          //                 margin: EdgeInsets.only(top: 4),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.only(top: 180,left: MediaQuery.of(context).size.width*0.58),
          //       child: Container(
          //         width: 114,
          //         height: 220,
          //         decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage("images/leader3.png"),
          //                 fit: BoxFit.fill)),
          //         child: Column(
          //           children: [
          //             Container(
          //               child: Text(
          //                 "3",
          //                 style:
          //                 TextStyle(color: AnimeColor.whiteColor, fontSize: 60),
          //               ),
          //               margin: EdgeInsets.only(top: 32),
          //             ),
          //             Container(
          //               child: Text(
          //                 "1000 points",
          //                 style:
          //                 TextStyle(color: AnimeColor.whiteColor, fontSize: 12),
          //               ),
          //               margin: EdgeInsets.only(top: 4),
          //             )
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // ),


          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 380),
            decoration: BoxDecoration(
              color: AnimeColor.whiteColor,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: ListView.builder(itemBuilder: (BuildContext context,int index){
              return Container(
                margin: EdgeInsets.only(left: 12,right: 12),
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("0"+(index+1).toString(),style: TextStyle(
                              color: AnimeColor.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                          margin: EdgeInsets.only(right: 12),
                        ),

                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          alignment: Alignment.center,
                          //margin: EdgeInsets.only(top: 100,),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AnimeColor.whiteColor,
                              width: 1,
                            ),
                            image: DecorationImage(image: AssetImage("images/user1.jpg"),
                                fit: BoxFit.cover
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

                        Container(
                          child: Text("Toe Aung "+index.toString(),style: TextStyle(
                              color: AnimeColor.primaryColor,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),


                    Container(
                      height: 32,
                      padding: EdgeInsets.only(left: 12,right: 12,top: 8,),
                      child: Text("900 points",style: TextStyle(
                          color: AnimeColor.whiteColor,
                          fontWeight: FontWeight.bold
                      ),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AnimeColor.primaryColor
                      ),
                    ),

                  ],
                ),
              );
            },itemCount: 10,),

          )
        ],
      ),
    );
  }
}
