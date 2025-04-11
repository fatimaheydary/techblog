import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
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
    child: Text("profile screen"),
  );
}

 }