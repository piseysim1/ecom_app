import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:flutter/material.dart';

class AlertInfo extends StatelessWidget {
  const AlertInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    textAlign: TextAlign.center,
                    "You reached out maximum \namount of attempts.\nPlease, try later.",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
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
            top: -30,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whilteColor,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 10,
                    bottom: 10,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: pinkColor,
                      ),

                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(Icons.error, color: deeppinkColor),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
