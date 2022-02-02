import 'dart:async';
import 'dart:typed_data';

import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/guess_the_song/questions_data.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
class QuizSongPage extends StatefulWidget {
  @override
  _QuizSongPageState createState() => _QuizSongPageState();
}

class _QuizSongPageState extends State<QuizSongPage> {


  int start = 15;
  bool wait = false;

  AudioPlayer audioPlayer = new AudioPlayer();
  // AudioPlayer audioPlayer1 = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool playing=false;
  // final assetsAudioPlayer = AssetsAudioPlayer();

  getAudio(String songUrl) async {

    // var url = songUrl;
    var res = await audioPlayer.play(songUrl);

    // if(int.parse(res)==1){
    //
    // }



    if(start==0){
       audioPlayer.stop();
      // playWarningSong();
    }



  }

  playWarningSong(){
    AudioPlayer audioPlayer1 = new AudioPlayer();
    audioPlayer1.play("https://firebasestorage.googleapis.com/v0/b/quiz-e4c89.appspot.com/o/mixkit-security-facility-breach-alarm-994.wav?alt=media&token=48adcb51-0690-43c2-9eec-33943cb46620",isLocal: true);
  }
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;


  void startTimer() {
    const onsec = Duration(seconds: 2);
    Timer _timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        timer.cancel();
        // setState(() {
        //   timer.cancel();
        //    wait = true;
        // });
      } else {
        setState(() {
          start--;
          print("start is $start" );

        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    start=0;
    super.dispose();
  }

  var haveBeenAnswerIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    // getAudio(questions[question_pos].songUrl.toString());
    _controller = PageController(initialPage: 0);

      startTimer();


    // startTimer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        audioPlayer.stop();
        return true;
      },
      child: Scaffold(

        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              color: AnimeColor.primaryColor,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 60,),
                      Container(
                        width: 52,
                        height: 52,
                        margin: EdgeInsets.only(top: 28,left: 8,),
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

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Yell Yint Aung",style: TextStyle(
                                color: AnimeColor.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                            ),),
                            margin: EdgeInsets.only(top: 52),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("144 points",style: TextStyle(
                                color: AnimeColor.yellowColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                            ),),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 32,right: 12),
                        height: 6,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AnimeColor.searchTextColor,
                        ),
                        child: FAProgressBar(
                          backgroundColor: AnimeColor.whiteColor,
                          progressColor: AnimeColor.yellowColor,
                          currentValue: start,
                          maxValue: 15,
                          //displayText: '%',
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 44,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.alarm,color: AnimeColor.whiteColor,),
                            Container(
                              margin: EdgeInsets.only(top: 4,right: 8),
                              child: start<=9?Text("0"+ start.toString() +" s",style: TextStyle(
                                  color: AnimeColor.whiteColor
                              ),):Text(start.toString() +" s",style: TextStyle(
                                  color: AnimeColor.whiteColor
                              ),),
                            )
                          ],
                        ),
                      )

                    ],
                  ),

                ],

              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(18.0),
                child: PageView.builder(
                  controller: _controller!,
                  onPageChanged: (page) {
                    if (page == questions.length - 1) {
                      setState(() {
                        btnText = "See Results";
                      });
                    }
                    setState(() {
                      answered = false;
                    });
                  },
                  physics: new NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    print("Url is $index");
                    print(questions[index].songUrl.toString());
                    getAudio(questions[index].songUrl.toString());
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 32,left: 12,right: 12),
                              width: MediaQuery.of(context).size.width,
                              height: 102,
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
                              child: Center(
                                child: Text(questions[index].question.toString(),style: TextStyle(
                                    color: AnimeColor.primaryColor
                                ),),
                              ),
                            ),



                            Center(
                              child: Container(
                                width: 80,
                                height: 40,
                                margin: EdgeInsets.only(top: 12),
                                child: Center(
                                  child: Text((index+1).toString()+"/"+questions.length.toString(),style: TextStyle(
                                      color: AnimeColor.primaryColor
                                  ),),
                                ),
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                      color: AnimeColor.primaryColor,
                                      width: 1,
                                    ),
                                    color: AnimeColor.whiteColor,
                                    borderRadius: new BorderRadius.all(Radius.circular(8))

                                ),
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 20,),
                        for (int i = 0; i < questions[index].answers!.length; i++)
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: EdgeInsets.only(
                                bottom: 20.0, left: 12.0, right: 12.0),
                            child: RawMaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),

                              ),
                              fillColor: btnPressed
                                  ? questions[index].answers!.values.toList()[i]
                                  ? AnimeColor.primaryColor
                                  : Colors.white
                                  : AnimeColor.whiteColor,
                              onPressed: !answered
                                  ? () {
                                if (questions[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                                  : null,
                              child: Text(questions[index].answers!.keys.toList()[i],
                                  style: TextStyle(
                                    color: AnimeColor.primaryColor,
                                    fontSize: 18.0,
                                  )),
                            ),
                          ),
                        SizedBox(
                          height: 40.0,
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            print("click");
                            if (_controller!.page?.toInt() == questions.length - 1) {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ResultScreen(score)));
                            } else {
                              _controller!.nextPage(
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.easeInExpo);

                              setState(() {
                                btnPressed = false;
                                 audioPlayer.stop();
                                 start=15;
                                startTimer();
                                 getAudio(questions[question_pos+1].songUrl.toString());
                                // print("Url is $question_pos");
                                // print(questions[question_pos+1].songUrl.toString());
                              });
                            }
                          },
                          shape: StadiumBorder(),
                          fillColor: AnimeColor.primaryColor,
                          padding: EdgeInsets.all(18.0),
                          elevation: 0.0,
                          child: Text(
                            btnText,
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    );
                  },
                  itemCount: questions.length,
                )),
          ],

        ),
      ),
    );
  }



}
