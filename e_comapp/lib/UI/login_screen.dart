
import 'package:e_comapp/UI/password_type.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:e_comapp/widget/text_form_cus.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(top: 0, left: 0, child: Image.asset(bluebackground1)),
                Positioned(top: 0, left: 0, child: Image.asset(bluebackground2) ,width: 150,),
              ],
            ),
            
            Positioned(top: 200, right: 0, child: Image.asset(bluebackground)),
            Positioned(bottom: 0, right: 0, child: Image.asset(bluebackground3)),
            ListView(
              padding: EdgeInsets.all(16),
              
              children: [
                SizedBox(height: 420),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Good to see you back! ", 
                    style: TextStyle(fontSize: 18, color: Colors.black54)
                  ),
                  Icon(Icons.favorite, size: 20),
                ],
                
              ),
              SizedBox(height: 15),
              TextFormCus(hintText: "Email",borderRadius: BorderRadius.circular(59.53),),
              SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: 100,
                child: ButtonCus(
                  BGbotton: Color(0xFF004CFF),
                  buttonName: "Next",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordType()));
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
              ]
            )

          ],
        ),
      ),
    );
  }
}
