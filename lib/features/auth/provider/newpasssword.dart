import 'package:e_comapp/features/auth/provider/hello_card_dashboard.dart';
import 'package:e_comapp/core/constants/image.dart';
import 'package:e_comapp/features/auth/widgets/button_cus.dart';
import 'package:e_comapp/features/auth/widgets/text_form_cus.dart';
import 'package:flutter/material.dart';

class Newpasssword extends StatelessWidget {
  const Newpasssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(bluebackground6),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(bluebackground7),
                  width: 250,
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(height: 150),
                Container(
                  width: 120,
                  height: 120,
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
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(logopeople, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Setup New Password",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      textAlign: TextAlign.center,
                      "Please, setup a new password for\n your account",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormCus(
                        hintText: "New Password",
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormCus(
                        hintText: "Repeat Password",
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ButtonCus(
                      BGbotton: Color(0xFF004CFF),
                      buttonName: "Save",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelloCardDashboard()),
                        );
                      },
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 14, color: Color(0xFF6D7077)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
