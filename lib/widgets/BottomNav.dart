import 'package:flutter/material.dart';
import 'package:flutter_fitness/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BottomNav extends StatelessWidget {

  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: 80,
        color: Colors.white,

        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavBar(title: "Today",pic: "images/search.svg",press:(){

            }),
            BottomNavBar(title: "All exercises",pic: "images/search.svg",active: true,
                press:(){
                  var active=true;
            }),
            BottomNavBar(title: "Settings",pic: "images/search.svg",press:(){

            }),

          ],
        )

    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String title;
  final String pic;
  final Function press;
  final bool active;
  const BottomNavBar({
    Key key, this.title, this.pic, this.press, this.active=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        SvgPicture.asset(pic,color:active?kActiveIconColor:kTextColor,),
      Text(title,style: TextStyle(color:active?kActiveIconColor:kTextColor))

        ],
      ),
    );
  }
}