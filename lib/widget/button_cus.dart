
import 'package:flutter/material.dart';

class ButtonCus extends StatelessWidget {
  const ButtonCus({super.key, required this.buttonName, this.onPressed, required this.BGbotton});
  final String? buttonName;
  final VoidCallback? onPressed;
  final Color BGbotton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: BGbotton,
      ),
      child: Text(
        buttonName ?? "Button", 
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }
}
