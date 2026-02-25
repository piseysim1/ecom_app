import 'package:e_comapp/widget/headertitle.dart';
import 'package:e_comapp/widget/profile_widget.dart';
import 'package:flutter/material.dart';

class Topproduct extends StatelessWidget {
  const Topproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Headertitle(
      lable_text: "Top Products",
      hasSeeAll: "",
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          // padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ProfileWidget(width: 48, height: 48,imageUrl: "https://tse2.mm.bing.net/th/id/OIP.ApVvWKeaJx3HQnm2qXa1fgHaHv?rs=1&pid=ImgDetMain&o=7&rm=3",);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 5);
          },
          itemCount: 12,
        ),
      ),
    );
  }
}
