import 'dart:async';

import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/general_quiz_page/general_quiz_choose_answer.dart';
import 'package:annime_pro/view/general_quiz_page/general_quiz_model.dart';
import 'package:annime_pro/view/general_quiz_page/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:page_transition/page_transition.dart';
class GeneralQuizTestPage extends StatefulWidget {
  @override
  _GeneralQuizTestPageState createState() => _GeneralQuizTestPageState();
}

class _GeneralQuizTestPageState extends State<GeneralQuizTestPage> {
  List<generalQuiz> questionList = [
    generalQuiz(1,"","Who is the leader of Atasuki?", "Orochimaru", "Pain", "Madara", "Itachi", "Madara","no"),
    generalQuiz(2,"","Who is the leader of Atasuki 1?", "Orochimaru 1", "Pain 1", "Madara 1", "Itachi 1", "Madara 1","no"),
    generalQuiz(3,"","Who is the leader of Atasuki 2 ?", "Orochimaru 2", "Pain 2", "Madara 2", "Itachi 2", "Madara 2","no"),
    generalQuiz(4,"","Who is the leader of Atasuki 3?", "Orochimaru 3 ", "Pain 3", "Madara 3", "Itachi 3", "Madara 3","no"),
    generalQuiz(5,"","Who is the leader of Atasuki 4?", "Orochimaru 4", "Pain 4", "Madara 4", "Itachi 4", "Madara 4","no")
  ];

  List<ChooseAnswer> chooseAnswerList = [];

  int start = 5;
  bool wait = false;

  int index=0;
  bool isSelected1=false;
  bool isSelected2=false;
  bool isSelected3=false;
  bool isSelected4=false;

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

        });
      }
    });
  }

  var haveBeenAnswerIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    print("question list"+questionList.length.toString());
    startTimer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        maxValue: 5,
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
                            child: Text("0"+ start.toString() +" s",style: TextStyle(
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
             child: Column(
               children: [
                 Container(
                   height: 114,
                   width: MediaQuery.of(context).size.width,
                   margin: EdgeInsets.only(top: 8,left: 12,right: 12),
                   child: Image.asset("images/image_quiz.png",fit: BoxFit.fill,),
                 ),

               ],
             ),
           ),

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
// color: Colors.grey.withOpacity(0.5), width: 1.
                        color: Colors.white
                    ),
                    color: Colors.white
                ),
                child: Center(
                  child: Text(questionList[index].question,style: TextStyle(
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
                    child: Text((index+1).toString()+"/"+questionList.length.toString(),style: TextStyle(
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


          SizedBox(height: 40,),
          InkWell(
            onTap: (){
              if(index<questionList.length-1){
                // index=index+1;
                if(chooseAnswerList.isNotEmpty){
                  if(chooseAnswerList[index].index==index){

                  }
                }
                if(isSelected1==false){
                  isSelected1=true;
                  isSelected2=false;
                  isSelected3=false;
                  isSelected4=false;
                }else if(isSelected1==true){
                  isSelected1=false;
                  isSelected2=false;
                  isSelected3=false;
                  isSelected4=false;
                }
                chooseAnswerList.add(ChooseAnswer(index, questionList[index].answer1==questionList[index].correctAnswer?true:false));
                print("index is $index");
                print("chooseAnswerList is "+(chooseAnswerList.length-1).toString());
                print(chooseAnswerList[index].index);
                print(chooseAnswerList[index].isCorrect);
                // if(index==questionList.length-1){
                //   Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: ResultPage()));
                // }

                setState(() {

                });
              }

            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(questionList[index].answer1,style: TextStyle(
                    color:isSelected1==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected1==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: questionList[index].answer1==questionList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
                  ):Container(),
                ],

              ),
              margin: EdgeInsets.only(left: 24,right: 24,top: 12),
              decoration: BoxDecoration(
                  color: isSelected1==true?AnimeColor.primaryColor:AnimeColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AnimeColor.primaryColor,
                    width: 1,
                  )
              ),
            ),
          ),

          InkWell(
            onTap: (){
              if(index<questionList.length-1){
                // index=index+1;

                if(isSelected2==false){
                  isSelected2=true;
                  isSelected1=false;
                  isSelected3=false;
                  isSelected4=false;
                }else if(isSelected2==true){
                  isSelected2=false;
                  isSelected1=true;
                  isSelected3=true;
                  isSelected4=true;
                }

                chooseAnswerList.add(ChooseAnswer(index, questionList[index].answer2==questionList[index].correctAnswer?true:false));
                print("index is $index");
                print("chooseAnswerList is "+chooseAnswerList.length.toString());
                // if(index==questionList.length-1){
                //   Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: ResultPage()));
                // }
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(questionList[index].answer2,style: TextStyle(
                    color:isSelected2==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected2==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: questionList[index].answer2==questionList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
                  ):Container(),
                ],

              ),
              margin: EdgeInsets.only(left: 24,right: 24,top: 12),

              decoration: BoxDecoration(
                  color: isSelected2==true?AnimeColor.primaryColor:AnimeColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AnimeColor.primaryColor,
                    width: 1,
                  )
              ),
            ),
          ),

          InkWell(
            onTap: (){
              if(index<questionList.length-1){
                // index=index+1;
                if(isSelected3==false){
                  isSelected1=false;
                  isSelected2=false;
                  isSelected4=false;
                  isSelected3=true;
                }else if(isSelected3==true){
                  isSelected3=false;
                  isSelected1=true;
                  isSelected2=true;
                  isSelected4=true;
                }

                chooseAnswerList.add(ChooseAnswer(index, questionList[index].answer3==questionList[index].correctAnswer?true:false));

                // if(index==questionList.length-1){
                //   Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: ResultPage()));
                // }
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(questionList[index].answer3,style: TextStyle(
                    color:isSelected3==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected3==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: questionList[index].answer3==questionList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
                  ):Container(),
                ],

              ),
              margin: EdgeInsets.only(left: 24,right: 24,top: 12),
              decoration: BoxDecoration(
                  color: isSelected3==true?AnimeColor.primaryColor:AnimeColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AnimeColor.primaryColor,
                    width: 1,
                  )
              ),
            ),
          ),

          InkWell(
            onTap: (){
              if(index<questionList.length-1){
                // index=index+1;
                if(isSelected4==false){
                  isSelected1=false;
                  isSelected2=false;
                  isSelected3=false;
                  isSelected4=true;
                }else if(isSelected4==true){
                  isSelected4=false;
                  isSelected1=true;
                  isSelected2=true;
                  isSelected3=true;
                }

                chooseAnswerList.add(ChooseAnswer(index, questionList[index].answer4==questionList[index].correctAnswer?true:false));

                // if(index==questionList.length-1){
                //   Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: ResultPage()));
                // }
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(questionList[index].answer1,style: TextStyle(
                    color:isSelected4==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected4==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: questionList[index].answer4==questionList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
                  ):Container(),
                ],

              ),
              margin: EdgeInsets.only(left: 24,right: 24,top: 12),
              decoration: BoxDecoration(
                  color: isSelected4==true?AnimeColor.primaryColor:AnimeColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AnimeColor.primaryColor,
                    width: 1,
                  )
              ),
            ),
          ),


          // chooseAnswerList.isEmpty?Container():chooseAnswerList[index].index==index?
          Container(
            margin: EdgeInsets.only(left: 24,right: 24,bottom: 8,top: 20),
            height: 52,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AnimeColor.primaryColor,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),

              //print(additionalInformationController.text);
              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OrderHistoryPage()));
              // },
              onPressed: () {
                if(index==questionList.length-1){
                   for(int i=0;i<chooseAnswerList.length;i++){
                     print(chooseAnswerList[i].isCorrect);
                   }
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500),child: ResultPage()));
                }else{
                  index+=1;
                  setState(() {

                  });
                }

              },
              child: Center(child: Text("Next",style: TextStyle(
                  color: AnimeColor.whiteColor
              ),)),


            ),
          )
              // :Container(),




          // generalQuizWidget(questionList),


          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   child: ListView.builder(itemBuilder: (BuildContext context,int index){
          //     return generalQuizWidget(questionList[index]);
          //   },itemCount: questionList.length,scrollDirection: Axis.vertical,),
          // ),



        ],
      ),
    );
  }


}
