import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/view/main_screen.dart';
import 'package:tech_blog/view/profile_screen.dart';
import 'package:tech_blog/view/register_intro.dart';
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
    var textTheme = Theme.of(context).textTheme;
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
inputDecorationTheme: InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      width: 2,
    ),
  ),
  filled: true,
  fillColor: Colors.white,
),

         elevatedButtonTheme: ElevatedButtonThemeData(style:
         ButtonStyle(
                    minimumSize: WidgetStateProperty.all<Size>(Size(50, 60)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    ),
                    textStyle: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        return textTheme.displayLarge;
                      }
                      return textTheme
                          .displayMedium; // Provide a default TextStyle
                    }),
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        return solidcolors.seemore;
                      }
                      return solidcolors
                          .primarycolor; // Provide a default TextStyle
                    }),
                  ),
         ),
        fontFamily: "dana",
        brightness:Brightness.light ,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(199, 255, 255, 255)
          ),
          titleSmall: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(197, 255, 255, 255)
          ),
          bodyLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 13,
            fontWeight: FontWeight.w300
          ),
          displayMedium: TextStyle(
            fontFamily: 'dana',
            fontSize: 12,
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
          ),
          headlineMedium: TextStyle(
            fontFamily: 'dana',
            fontSize: 14,
            color: solidcolors.hinttext,
            fontWeight: FontWeight.w700
          ),          

        
        )
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterIntro()
   ); 
     
  
  }
}
