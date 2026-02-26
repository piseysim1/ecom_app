import 'package:e_comapp/features/auth/provider/create_account_screen.dart';
import 'package:e_comapp/core/constants/image.dart';
import 'package:e_comapp/features/auth/widgets/button_cus.dart';
import 'package:flutter/material.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white, // Placeholder color
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(background), // Your image variable
                    // This makes sure the image fills the circle
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Shoope",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Beautiful eCommerce UI Kit \n for your online store",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 320,
                height: 50,
                child: ButtonCus(
                  buttonName: "Let's Get Started",
                  BGbotton: Color(0xFF004CFF),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        settings: const RouteSettings(name: '/creater account'),
                        builder: (context) => CreateAccountScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I already have an account? "),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF004CFF),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
