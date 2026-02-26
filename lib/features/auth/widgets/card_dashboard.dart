import 'package:e_comapp/core/constants/color.dart';
import 'package:e_comapp/core/constants/image.dart';
import 'package:e_comapp/features/auth/widgets/button_cus.dart';
import 'package:flutter/material.dart';

class CardDashboard extends StatelessWidget {
  const CardDashboard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.isShowbutton = false,
    this.onClick,
  });
  final String image;
  final String title;
  final String description;
  final bool? isShowbutton;
  final VoidCallback? onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 56),
      width: 300,
      height: 540,
      decoration: BoxDecoration(
        color: whilteColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(2, 2), blurRadius: 2),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            child: Image.asset(image),
          ),
          const SizedBox(height: 35),
          Text(
            title,
            style: TextStyle(
              color: blackColor,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
          if (isShowbutton == true) ...[
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              child: ButtonCus(
                buttonName: "Let's Start",
                onPressed: onClick,
                BGbotton: mainblue,
              ),
            ),
          ],
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
