import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_blog/assets.dart' as customAssets;
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/my_component';
import 'package:tech_blog/my_strings.dart';
 class ProfileScreen extends StatelessWidget {

 ProfileScreen({
  Key? key,
  required this.size,
  required this.bodymargin,
  required this.textTheme,
}):super (key:key);
final Size size;
final double bodymargin;
final TextTheme textTheme;
@override 
Widget build(BuildContext context){
  return SingleChildScrollView(
    physics:const BouncingScrollPhysics() ,
    child: Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
       
        mainAxisAlignment:MainAxisAlignment. center,
      
        children: [
         
          Image(
            height: 100,
            image: AssetImage(Assets.images.profileavater.path),),
          
          const SizedBox(height:12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ImageIcon(AssetImage(Assets.icons.bluepen.path), color: solidcolors.seemore,),
            SizedBox(width: 8,),
            Text(MyStrings.imageprofileeddit,
            style: textTheme.displaySmall,)
          ],)
      
         , const SizedBox(height: 60,),
        Text("فاطیما حیدری",style: textTheme.headlineLarge,),
        const SizedBox(height: 16,),
        Text("fatimaheidari.2002@gmail.com",style: textTheme.headlineLarge,),
        const SizedBox(height: 40,),
        techdivider(size: size),
        InkWell(
          onTap: ( (){
      
          }
          ),
          splashColor: solidcolors.primarycolor,
          child: SizedBox(
            height: 45,
            child: Center(
              child: Text(
                MyStrings.myfavblogs,style: textTheme.headlineLarge,)),
          ),
        ),
      
        techdivider(size: size),
        InkWell(
          onTap: ( (){
      
          }
          ),
          splashColor: solidcolors.primarycolor,
          child: SizedBox(
            height: 45,
            child: Center(
              child: Text(
                MyStrings.myfavpodcast,style: textTheme.headlineLarge,)),
          ),
        ),
      
        techdivider(size: size),
        InkWell(
          onTap: ( (){
      
          }
          ),
          splashColor: solidcolors.primarycolor,
          child: SizedBox(
            height: 45,
            child: Center(
              child: Text(
                MyStrings.logout,style: textTheme.headlineLarge,)),
          ),
        ),
      SizedBox(height: 200,),
        ],
      ),
    )
  );
}

 }
