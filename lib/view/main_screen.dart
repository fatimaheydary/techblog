import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/my_strings.dart';
import 'package:tech_blog/view/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargin = size.width / 10;
    // TODO: implement build
    return SafeArea(
      
      child: Scaffold(
       
        appBar:AppBar(
          elevation: 0,
          backgroundColor: solidcolors.scaffoldbg,
          title:
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu,color: Colors.black,),
                  Image(
                    image: Assets.images.logo.provider(),
                    height: size.height / 13.6,
                  ),
                  Icon(Icons.search,color: Colors.black,),
                ],
              )  ,
        ) ,
        
  
  body: Stack(
          children: [
            
            Positioned.fill(child: homeScreen(size: size, textTheme: textTheme, bodymargin: bodymargin)),
         
            bottomnavigation(size: size, bodymargin: bodymargin),
          ],
        ), 

        
       ),
    );
  }
}

class bottomnavigation extends StatelessWidget {
  const bottomnavigation({
    super.key,
    required this.size,
    required this.bodymargin,
  });

  final Size size;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 0,
      left: 0,
      child: Container(
        height: size.height / 13,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradiantcolors.bottomnavbackground,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.only(right: bodymargin, left: bodymargin),
          child: Container(
            height: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              gradient: LinearGradient(colors: gradiantcolors.bottomnav),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    Assets.icons.home.provider(),
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    Assets.icons.write.provider(),
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    Assets.icons.user.provider(),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


    