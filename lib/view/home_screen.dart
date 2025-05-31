
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_blog/assets.dart' as customAssets;
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/my_component.dart';
import 'package:tech_blog/my_strings.dart';


class homeScreen extends StatelessWidget {
  const homeScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodymargin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
          
            homepageposter(size: size, textTheme: textTheme),
            SizedBox(height: 16),
           
            homepagetaglist(bodymargin: bodymargin, textTheme: textTheme),
            SizedBox(height: 30),
            
            seemoreblog(bodymargin: bodymargin, textTheme: textTheme),
    
            
            homepagebloglist(size: size, bodymargin: bodymargin, textTheme: textTheme),
            SizedBox(height: 4),
            seemorepodcast(bodymargin: bodymargin, textTheme: textTheme), //5.1
           //podcast list
            homepagepodcastlist(size: size, bodymargin: bodymargin),
         SizedBox(height: 90,)
          ],
        ),
      ),
    );
  }
}

class homepagepodcastlist extends StatelessWidget {
  const homepagepodcastlist({
    super.key,
    required this.size,
    required this.bodymargin,
  });

  final Size size;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 5,
      child: ListView.builder(
        itemCount: podcastlist.getRange(0, 5).length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: (EdgeInsets.only(
              right: index == 0 ? bodymargin : 15,
            )),
            child: Column(
              children: [
                Container(
                  height: size.height / 7,
                  width: size.width / 3.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                        podcastlist[index].imageUrl,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 3.1,
                  child: Text(podcastlist[index].title),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class seemorepodcast extends StatelessWidget {
  const seemorepodcast({
    super.key,
    required this.bodymargin,
    required this.textTheme,
  });

  final double bodymargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodymargin, bottom: 4),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icons.micicon.path),
            color: solidcolors.seemore,
          ),
          SizedBox(width: 8),
          Text(
            MyStrings.ViewHotestPodcasts,
            style: textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}

class homepagebloglist extends StatelessWidget {
  const homepagebloglist({
    super.key,
    required this.size,
    required this.bodymargin,
    required this.textTheme,
  });

  final Size size;
  final double bodymargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4,
      child: ListView.builder(
        itemCount: blogList.getRange(0, 5).length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          //blog item
          return Padding(
            padding: EdgeInsets.only(
              right: index == 0 ? bodymargin : 15,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 6.4,
                    width: size.width / 2.6,
        
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                blogList[index].imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          foregroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: gradiantcolors.blogpost,
                            ),
                          ),
                        ),
        
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                blogList[index].writer,
                                style: textTheme.titleSmall,
                              ),
                              Row(
                                children: [
                                  Text(
                                    blogList[index].views,
                                    style: textTheme.titleSmall,
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2.6,
                  child: Text(
                    blogList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class seemoreblog extends StatelessWidget {
  const seemoreblog({
    super.key,
    required this.bodymargin,
    required this.textTheme,
  });

  final double bodymargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodymargin, bottom: 4),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icons.bluepen.path),
            color: solidcolors.seemore,
          ),
          SizedBox(width: 8),
          Text(
            MyStrings.ViewHotestBlog,
            style: textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}

class homepagetaglist extends StatelessWidget {
  const homepagetaglist({
    super.key,
    required this.bodymargin,
    required this.textTheme,
  });

  final double bodymargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              8,
              index == 0 ? bodymargin : 15,
              8,
            ),
            child: maintags(textTheme: textTheme, index: index),
          );
        }),
      ),
    );
  }
}


class homepageposter extends StatelessWidget {
  const homepageposter({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.25,
          height: size.height / 4.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage(
                homepagepostermap["imageassets"],
              ),
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: gradiantcolors.homepostercovergradiant,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    homepagepostermap["writer"] +
                        " - " +
                        homepagepostermap["date"],
                    style: textTheme.titleSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        homepagepostermap["view"],
                        style: textTheme.titleSmall,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
        
              Text(
                '12 قدم برنامه نویسی',
                style: textTheme.displayLarge,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ],
    );
  }
}