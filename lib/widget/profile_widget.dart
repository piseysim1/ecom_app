import 'package:e_comapp/contant/image.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, required this.width, required this.height});
  final String image = logopeople;
  final double width ;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width+20,
      height: height+20,
      // padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 2,
            blurRadius: 24,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
