import 'package:annime_pro/helper/anime_color.dart';
import 'package:flutter/material.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';
class WeeklyBattlePage extends StatefulWidget {
  const WeeklyBattlePage({Key? key}) : super(key: key);

  @override
  _WeeklyBattlePageState createState() => _WeeklyBattlePageState();
}

class _WeeklyBattlePageState extends State<WeeklyBattlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeColor.primaryColor,
      body: ListView(
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
        ],
      ),
    );
  }
}
