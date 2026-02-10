import 'package:e_comapp/contant/image.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class WorngPassowrd extends StatefulWidget {
  WorngPassowrd({super.key});
  @override
  State<WorngPassowrd> createState() => _WorngPassowrdState();
}

class _WorngPassowrdState extends State<WorngPassowrd> {
  final defaultPinTheme = PinTheme(
    width: 48,
    height: 48,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      border: Border.all(color: Color.fromRGBO(210, 212, 214, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Not you? "),
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
      body: SizedBox(
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(bluebackground1),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(bluebackground2),
                  width: 150,
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
                Center(
                  child: Text(
                    "Hello, Romina!!",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Type your password",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  validator: (s) {
                    return s == '2222' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
