import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/view/splash_screen.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: solidcolors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: solidcolors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:const[
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
       GlobalCupertinoLocalizations.delegate
      ] ,
      supportedLocales: const [
        Locale('fa',''),
      ],
      theme: ThemeData(
        fontFamily: "dana",
        brightness:Brightness.light ,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: solidcolors.postersubtitle
          ),
          titleSmall: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: solidcolors.postersubtitle
          ),
          bodyLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 13,
            fontWeight: FontWeight.w300
          ),
          displayMedium: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w300
          ),
          displaySmall: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            color:solidcolors.seemore,
            fontWeight: FontWeight.w700
          ),
          headlineLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            color: Color.fromARGB(255, 70, 70, 70),
            fontWeight: FontWeight.w700
          )
        
        )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
   ); 
     
  
  }
}
