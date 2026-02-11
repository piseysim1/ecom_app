import 'package:e_comapp/contant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    super.key,
    this.onPressed,
    required this.iconsvg,
    this.width = 40,
    this.height = 40,
  });
  final VoidCallback? onPressed;
  final String iconsvg;
  final double width ;
  final double height ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          backgroundColor: const Color.fromARGB(255, 255, 249, 249),
          shape: const CircleBorder(),
        ),
        child: SvgPicture.asset(
          iconsvg,
          height: height * 0.4,
          width: width * 0.4,
          fit: BoxFit.contain,
          color: mainblue,
        ),
      ),
    );
  }
}
