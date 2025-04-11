import 'package:tech_blog/view/main_screen.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
      (context)=>MainScreen()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(
     child: Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: Assets.images.logo.provider(),height: 64,),
             SizedBox(height: 32,),
              SpinKitFadingCube(
                color: solidcolors.primarycolor,
                size: 32,
              )
            ],
          ),
        ),
      ),
     );
   
  }
}