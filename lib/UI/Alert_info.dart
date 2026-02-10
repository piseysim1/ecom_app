import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:flutter/material.dart';

class AlertInfo extends StatelessWidget {
  const AlertInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "You reached out maximum \namount of attempts.\nPlease, try later.",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    width: double.infinity,
                    child: ButtonCus(
                      buttonName: 'Okay',
                      BGbotton: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whilteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
