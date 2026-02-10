// import 'package:e_comapp/UI/password_recovery.dart';
import 'package:e_comapp/UI/password_recovery.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/password_dot.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PasswordType extends StatefulWidget {
  const PasswordType({super.key});
  static const int pinLength = 8;
  @override
  State<PasswordType> createState() => _PasswordTypeState();
}
class _PasswordTypeState extends State<PasswordType> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final String correctPin = "12345678";
  bool isError = false;
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
                  width: 150,
                  child: Image.asset(bluebackground2),
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
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: Stack(
                    children: [
                      PasswordDot(
                        totalCount: PasswordType.pinLength,
                        fillCount: _controller.text.length,
                        isError: isError,
                      ),
                      Opacity(
                        opacity: 0,
                        child: TextField(
                          focusNode: _focusNode,
                          controller: _controller,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          maxLength: PasswordType.pinLength,
                          onChanged: (value) {
                            setState(() {
                              isError = false;
                            });
                            if (value.length == PasswordType.pinLength) {
                              if (value == correctPin) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PasswordRecovery(),
                                  ),
                                );
                              } else {
                                // Password is incorrect, show error
                                setState(() {
                                  isError = true;
                                });
                              }
                            }
                            Future.delayed(Duration(seconds: 9), () {
                              _controller.clear();
                              setState(() {
                                isError = false;
                              });
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Text("Forgot your password?", textAlign: TextAlign.center),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
