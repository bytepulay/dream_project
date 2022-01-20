import 'package:annime_pro/helper/anime_color.dart';
import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text("Setting Page"),
           backgroundColor: AnimeColor.primaryColor,
         ),
        body: Center(child: Container(child: Text("This is setting page"),)));
  }
}
