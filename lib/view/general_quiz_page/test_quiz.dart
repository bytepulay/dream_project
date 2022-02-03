import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {

  List list = [];

  GridViewWidget() {

    for (int i = 1; i < 20; i++) {

      int j = (i % 9) + 1;

      var temp = {

        "imageurl": "https://cdn.pixabay.com/photo/2016/10/17/17/41/priyanka-chopra-1748248_960_720.jpg",

        "title": "Image  $i"

      };

      list.add(temp);

    }

  }

  @override

  Widget build(BuildContext context) {

    // TODO: implement build

    return Scaffold(

        appBar: AppBar(

          title: Text("GridView"),

          backgroundColor: Colors.pink,

        ),

        body: GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,

              mainAxisSpacing: 5,

              crossAxisSpacing: 5,

            ),

            itemCount: list.length,

            itemBuilder: (BuildContext context, int index) {

              return Container(
                margin: EdgeInsets.only(left: 12,right: 12,top: 12),
                decoration: BoxDecoration(

                    border: Border.all(

                      color: Colors.red,

                      width: 2,

                    )),

                child: Column(

                  mainAxisSize: MainAxisSize.max,

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[

                    Image.network(

                      list[index]['imageurl'],

                      fit: BoxFit.cover,

                    ),

                    Expanded(child: Text(list[index]['title'])),

                  ],

                ),

              );

            }));

  }

}