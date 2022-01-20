import 'package:annime_pro/helper/anime_color.dart';
import 'package:annime_pro/view/leader_board_page/leader_board_page.dart';
import 'package:annime_pro/view/setting_page/setting_page.dart';
import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
class HomeBottomNavigation extends StatefulWidget {
  @override
  _HomeBottomNavigationState createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int currentIndex = 0;
  int currentPage =0;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AnimeColor.primaryColor,
      body: currentPage == 0
          ? HomePage()
          : currentPage == 1
          ? LeaderBoardPage()
          : currentPage == 2 ? SettingPage() : HomePage(),

      bottomNavigationBar: CircleBottomNavigation(
        barBackgroundColor: AnimeColor.primaryColor,
        circleColor: AnimeColor.whiteColor,
        circleOutline: 10,
        textColor: AnimeColor.whiteColor,
        inactiveIconColor: AnimeColor.whiteColor,
        activeIconColor: AnimeColor.primaryColor,
        initialSelection: currentPage,
        tabs: [
          TabData(icon: Icons.home,title: "Home"),
          TabData(icon: Icons.leaderboard,title: "Leaderboard"),
          TabData(icon: Icons.settings,title: "Setting"),
        ],
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: AnimeColor.whiteColor,
      //   backgroundColor: AnimeColor.primaryColor,
      //   type: BottomNavigationBarType.fixed,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //            "images/home.png",
      //             width: 32,
      //             height: 32,
      //       ),
      //       label: "Home",
      //
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: AnimeColor.primaryColor,
      //       icon: Image.asset(
      //           "images/reward.png",
      //         width: 32,
      //         height: 32,
      //       ),
      //       label: "Reward",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //           "images/setting.png",
      //         width: 32,
      //         height: 32,
      //       ),
      //       label:"Setting",
      //     ),
      //
      //   ],
      //   onTap: (i) {
      //     setState(() {
      //       currentIndex = i;
      //       print("current index is $currentIndex");
      //       print("current index is $currentIndex");
      //       if(currentIndex==0){
      //         Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (BuildContext context) => super.widget));
      //       }
      //
      //
      //
      //     });
      //   },
      //   currentIndex: currentIndex,
      // ),
      // bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.movie),
      //       title:Text(AppTranslations.of(context).trans("popular"))
      //   ),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.movie_filter),
      //       title: Text(("upcoming"))
      //   ),
      // ],
      //   onTap: (i){
      //     setState((){
      //       currentIndex=i;
      //     });
      //   },
      //   currentIndex:currentIndex ,
      //
      // ),
    );

  }
}
