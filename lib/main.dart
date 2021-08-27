import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness/colors.dart';
import 'package:flutter_fitness/widgets/categorycard.dart';

import 'Screens/DetailsScreen.dart';
import 'widgets/BottomNav.dart';

void main() {
  runApp(Fitness());
}

class Fitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Fitness App",
        theme: ThemeData(
            fontFamily: "Cairo",
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(displayColor: kTextColor)),
        home: HomeScreen());
    throw UnimplementedError();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0XFFF5CEB8),
              // image: DecorationImage(
              //   image: AssetImage('images/undraw_pilates_gpdp.png'),
              //   alignment: Alignment.centerLeft,
              // )
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 52,
                      height: 52,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFFF2BEA1),
                          image: DecorationImage(
                              image: AssetImage('images/icons8-menu-26.png'))),
                    ),
                  ),
                  Text("Good morning \n Shashir",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blueAccent),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                        decoration: InputDecoration(
                            // icon:Image.asset("images/icons8-menu-26.png"),
                            icon: Icon(Icons.search),
                            hintText: "Search",
                            border: InputBorder.none)),
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: .85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: "Diet Recommendation",
                          svgSrc: 'images/hamburger-buffet.svg',
                          press: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return DetailsScreen();
                            }));
                          },
                        ),
                        CategoryCard(
                          title: "Expert Exercises",
                          svgSrc: 'images/hamburger-buffet.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: 'images/hamburger-buffet.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgSrc: 'images/hamburger-buffet.svg',
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}


