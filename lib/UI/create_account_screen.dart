import 'package:dotted_border/dotted_border.dart';
import 'package:e_comapp/UI/login_screen.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:e_comapp/widget/text_form_cus.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // We keep Stack only for the background images
        children: [
          Positioned(top: 0, left: 0, child: Image.asset(bluebackground1)),
          Positioned(top: 38, right: 0, child: Image.asset(bluebackground)),
          // Use a ScrollView so the keyboard doesn't break the UI
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                const Text(
                  "Create\nAccount",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                // Profile Picture Section
                DottedBorder(
                  color: const Color(0xFF004CFF),
                  strokeWidth: 2,
                  dashPattern: const [10, 5],
                  borderType: BorderType.Circle,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(cameraicon)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Form Fields
                TextFormCus(hintText: "Email", borderRadius: BorderRadius.circular(59.53), ),
                const SizedBox(height: 8),
                TextFormCus(
                  hintText: "Password",
                  suffixIcon: const Icon(Icons.visibility_off),
                  borderRadius: BorderRadius.circular(59.53),
                ),
                const SizedBox(height: 8),
                // The Phone Row Fix
                TextFormCus(
                  borderRadius: BorderRadius.circular(59.53),
                    hintText: "Your Phone",
                    
                    prefixIcon: Container(
                      width: 80,
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Image.asset(flagicon, width: 32, height: 24),
                          const Icon(Icons.keyboard_arrow_down, size: 18),
                          const SizedBox(width: 8),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 30),
                // Buttons
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ButtonCus(
                    BGbotton: Color(0xFF004CFF),
                    buttonName: "Done",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: const RouteSettings(name: '/login'),
                          builder: (context) => const LoginScreen(),
                          
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 14, color: Color(0xFF6D7077)),
                  ),
                ),
                const SizedBox(height: 40), // Bottom padding
              ],
            ),
          ),
        ],
      ),
    );
  }
}
