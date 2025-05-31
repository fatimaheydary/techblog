import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tech_blog/assets.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/my_colors.dart';
class techdivider extends StatelessWidget {
  const techdivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: solidcolors.dividercolor,
      thickness: 1,
      indent: size.width/6,
      endIndent:size.width/6 ,
    );
  }
}
class maintags extends StatelessWidget {
   maintags({
    super.key,
    required this.textTheme,
    required this.index,
  });

final TextTheme textTheme;
final int index;
@override
Widget build(BuildContext context) {
    return Container(
      height: 60,
            
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
        gradient: LinearGradient(
          colors: gradiantcolors.tags,
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(Assets.icons.hashtagicon_png),
              color: Colors.white,
              size: 16,
            ),
            SizedBox(width: 8),
            Text(
              tagList[index].title,
              style: textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
