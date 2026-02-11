import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/circle_button_widget.dart';
import 'package:e_comapp/widget/profile_widget.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        clipBehavior: Clip.none,
        title: Row(
          spacing: 16,
          children: [
            ProfileWidget(),
            Chip(
              side: BorderSide(color: mainblue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              label: Text("My Activity"),
              backgroundColor: mainblue,
              labelStyle: TextStyle(color: whilteColor),
            ),
          ],
        ),
        actions: [CircleButtonWidget(iconsvg: iconsvg2),
        CircleButtonWidget(iconsvg: iconsvg1),
        CircleButtonWidget(iconsvg: iconsvg3)],
      ),
    );
  }
}
