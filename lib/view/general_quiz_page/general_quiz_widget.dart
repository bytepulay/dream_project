import 'package:annime_pro/helper/anime_color.dart';
import 'package:flutter/material.dart';
import 'general_quiz_model.dart';
class generalQuizWidget extends StatefulWidget {
  List<generalQuiz> generalQuizList;

  generalQuizWidget(this.generalQuizList);
  @override
  _generalQuizWidgetState createState() => _generalQuizWidgetState();
}

class _generalQuizWidgetState extends State<generalQuizWidget> {
  int index=0;
  bool isSelected1=false;
  bool isSelected2=false;
  bool isSelected3=false;
  bool isSelected4=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 114,
            margin: EdgeInsets.only(top: 8,left: 12,right: 12),
            child: Image.asset("images/image_quiz.png",fit: BoxFit.fill,),
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
                  child: Text(widget.generalQuizList[index].question,style: TextStyle(
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
                    child: Text((index+1).toString()+"/"+widget.generalQuizList.length.toString(),style: TextStyle(
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
              if(index<widget.generalQuizList.length-1){
                index=index+1;
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
                  Text(widget.generalQuizList[index].answer1,style: TextStyle(
                    color:isSelected1==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),
                  
                  isSelected1==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: widget.generalQuizList[index].answer1==widget.generalQuizList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
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
              if(index<widget.generalQuizList.length-1){
                index=index+1;
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
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(top: 12,left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.generalQuizList[index].answer2,style: TextStyle(
                    color:isSelected2==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected2==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: widget.generalQuizList[index].answer2==widget.generalQuizList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
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
              if(index<widget.generalQuizList.length-1){
                index=index+1;
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
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(top: 12,left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.generalQuizList[index].answer3,style: TextStyle(
                    color:isSelected3==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected3==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: widget.generalQuizList[index].answer3==widget.generalQuizList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
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
              if(index<widget.generalQuizList.length-1){
                index=index+1;
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
                setState(() {

                });
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              padding: EdgeInsets.only(top: 12,left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.generalQuizList[index].answer1,style: TextStyle(
                    color:isSelected4==true?AnimeColor.whiteColor:AnimeColor.primaryColor,
                  ),),

                  isSelected4==true?Container(
                    margin: EdgeInsets.only(right: 12),
                    child: widget.generalQuizList[index].answer4==widget.generalQuizList[index].correctAnswer?Image.asset("images/correct_image.png",width: 20,height: 20,):Image.asset("images/wrong_image.png",width: 20,height: 20,),
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


        ],
      ),
    );
  }
}




