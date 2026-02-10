import 'package:e_comapp/widget/button_cus.dart';
import 'package:flutter/material.dart';

class AlertInfo extends StatelessWidget {
  const AlertInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textAlign: TextAlign.center,
              "You reached out maximum amount of attempts.Please, try later.",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 24),
              child: ButtonCus(buttonName: 'Okay', BGbotton: Colors.black,onPressed: (){},),
            ),
          ],
        ),
      ),
    );
  }
}
