import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/my_strings.dart';
//import 'package:tech_blog/assets.dart' as customAssets;

class RegisterIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SvgPicture.asset(Assets.images.bot.path, height: 150),
              Padding(
                padding: const EdgeInsets.only(top: 16),

                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: MyStrings.welcome,
                    style: textTheme.headlineLarge,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: ElevatedButton(
                  onPressed: () {
                    _ShowEmailBottomSheet(context, size, textTheme);
                  },
                
                  child: Text(
                    "بزن بریم",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> _ShowEmailBottomSheet(BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, 
                  builder: ((context){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        height: size.height/2.5,
                        decoration: BoxDecoration(
                      
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(MyStrings.insertemail, style: textTheme.headlineLarge,),
                            SizedBox(
                            
                            ),
                            Padding(
                              padding: const EdgeInsets.all(32),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration:InputDecoration(
                                  hintText: MyStrings.myemail,
                                  hintStyle: textTheme.headlineMedium,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(onPressed: () {
                              
                            }, child: Text("ادامه",
                            style: TextStyle(color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                      
                      ),
                    );
                  })
                  );
  }
}
