import 'package:e_comapp/UI/password_recovery_code.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:e_comapp/widget/chip_select.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatefulWidget {
  PasswordRecovery({super.key});
  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
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
                      "Password Recovery",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      textAlign: TextAlign.center,
                      "How you would like to restore\nyour password?",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    ChipSelect(
                      chipColor: Color(0xFF004CFF),
                      isSelected: true,
                      textlable: "SMS",
                      textColor: Color(0xFF004CFF),
                      fontWeight: FontWeight.w700,
                    ),
                      SizedBox(height: 15),
                    ChipSelect(
                      chipColor: Color(0xFFF8CECE),
                      isSelected: false,
                      textlable: "Email",
                      textColor: Color.fromARGB(255, 11, 9, 10),
                      fontWeight: FontWeight.w200,
                    ),
                  ],
                ),
                SizedBox(height: 150),
                SizedBox(
                height: 50,
                width: 120,
                child: ButtonCus(
                  BGbotton: Color(0xFF004CFF),
                  buttonName: "Next",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordRecoveryCode()));
                  },
                ),
              ),
              SizedBox(height: 20),
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
