import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_blog/assets.dart';
import 'package:tech_blog/models/data_models.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
import 'package:tech_blog/my_component.dart';
import 'package:tech_blog/my_strings.dart';

class MyCats extends StatefulWidget {
  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(right: bodymargin, left: bodymargin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  SvgPicture.asset(Assets.images.bot_svg, height: 150),
                  SizedBox(height: 18),
                  Text(
                    MyStrings.successfulregistration,
                    style: textTheme.headlineLarge,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "نام و نام خانوادگی",
                      hintStyle: textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 34),
                  Text(MyStrings.choosecats, style: textTheme.headlineLarge),
                  //tag list
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 85,
                      child: GridView.builder(
                        physics: ClampingScrollPhysics(),
                        itemCount: tagList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              childAspectRatio: 0.3,
                            ),
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if(!selectedtag.contains(tagList[index])){
                                  selectedtag.add(tagList[index]);
                                }
                                else{
                                  print("${tagList[index].title} is already selected");
                                }
                              });
                            },
                            child: maintags(textTheme: textTheme, index: index),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Image.asset(Assets.icons.arrow, scale: 2.5),

                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 85,
                      child: GridView.builder(
                        physics: ClampingScrollPhysics(),
                        itemCount: selectedtag.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              childAspectRatio: 0.2,
                            ),
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 60,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                             color: solidcolors.surface,
                              ),
                           
                            child: Padding(
                            
                              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                
                                  SizedBox(width: 8),
                                  Text(
                                    selectedtag[index].title,
                                    style: textTheme.headlineLarge,
                                  ),
                                   InkWell(
                                    onTap: () {
                                      
                                      setState(() {
                                        selectedtag.removeAt(index);
                                      });
                                    },
                                    child: Icon(CupertinoIcons.delete,color: Colors.grey,)),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
