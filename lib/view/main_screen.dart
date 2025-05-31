import 'package:tech_blog/assets.dart' as customAssets;
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/my_strings.dart';
import 'package:tech_blog/view/home_screen.dart';
import 'package:tech_blog/view/profile_screen.dart';

class MainScreen extends StatefulWidget {

   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
  final GlobalKey <ScaffoldState>_key=GlobalKey();
class _MainScreenState extends State<MainScreen> {
  var selectedpageindex=0;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargin = size.width / 10;
    
    
    // TODO: implement build
    return SafeArea(
      
      child: Scaffold(
        key: _key,
       drawer:Drawer(
        backgroundColor: solidcolors.scaffoldbg,
        child:Padding(
          padding:  EdgeInsets.only(right: bodymargin,left: bodymargin),
          child: ListView(
            children: [
                DrawerHeader(
                  child: Center(
                    child: Image(
                      image: AssetImage(Assets.images.logo.path),
                      height: size.height / 13.6,
                    ),
                  ),
                ),
              ListTile(
                title: Text("پروفایل کاربری", style: textTheme.headlineLarge,),
               
                onTap: () {
                },
          
              ),
              Divider(
                color: solidcolors.dividercolor,
                thickness: 1,
              ),ListTile(
                title: Text("درباره تک‌بلاگ", style: textTheme.headlineLarge,),
               
                onTap: () {
                },
          
              ),
              Divider(
                color: solidcolors.dividercolor,
                thickness: 1,
              ),ListTile(
                title: Text("اشتراک گذاری تک بلاگ", style: textTheme.headlineLarge,),
               
                onTap: () {
                },
          
              ),
              Divider(
                color: solidcolors.dividercolor,
                thickness: 1,
              ),ListTile(
                title: Text("تک‌بلاگ در گیت هاب", style: textTheme.headlineLarge,),
               
                onTap: () {
                },
          
              ),
              Divider(
                color: solidcolors.dividercolor,
                thickness: 1,
              ),
              ],
            ),
        ),
        ),
     
        appBar:AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: solidcolors.scaffoldbg,
          title:
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: Icon(Icons.menu,color: Colors.black,)),
                  Image(
                    image: AssetImage(Assets.images.logo.path),
                    height: size.height / 13.6,
                  ),
                  Icon(Icons.search,color: Colors.black,),
                ],
              )  ,
        ) ,
        
  
  body: Stack(
          children: [
            
            Positioned.fill(
              child:
             IndexedStack(
              index: selectedpageindex,
              children: [
               homeScreen(size: size, textTheme: textTheme, bodymargin: bodymargin),
                  ProfileScreen(size: size, bodymargin: bodymargin, textTheme: textTheme)
              ],
             )
            ),
         
            bottomnavigation(
              size: size,
               bodymargin: bodymargin,
               changescreen: (int value) {
                setState(() {
                  selectedpageindex = value;
                });
              },
               ),
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
    required this.changescreen,

  });

  final Size size;
  final double bodymargin;
  final Function (int)changescreen;

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
                  onPressed: (() => changescreen(0)),
                  icon: ImageIcon(
                    AssetImage(Assets.icons.home.path),
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    AssetImage(Assets.icons.write.path),
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (() => changescreen(1)),
                  icon: ImageIcon(
                    AssetImage(Assets.icons.user.path),
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


    