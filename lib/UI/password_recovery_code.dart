import 'package:e_comapp/UI/Alert_info.dart';
import 'package:e_comapp/UI/newpasssword.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/button_cus.dart';
import 'package:e_comapp/widget/password_dot.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryCode extends StatefulWidget {
  const PasswordRecoveryCode({super.key});
  static const int pinLength = 4;
  @override
  State<PasswordRecoveryCode> createState() => _PasswordRecoveryCodeState();
}

class _PasswordRecoveryCodeState extends State<PasswordRecoveryCode> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final String correctPin = "1234";
  bool isError = false;
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
                      "Enter 4-digits code we sent you \non your phone number",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Text(
                      textAlign: TextAlign.center,
                      "+98*******00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: Stack(
                    children: [
                      PasswordDot(
                        totalCount: PasswordRecoveryCode.pinLength,
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
                          maxLength: PasswordRecoveryCode.pinLength,
                          onChanged: (value) {
                            setState(() {
                              isError = false;
                            });
                            if (value.length ==
                                PasswordRecoveryCode.pinLength) {
                              if (value == correctPin) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Newpasssword(),
                                  ),
                                );
                              } else {
                                // Password is incorrect, show error
                                setState(() {
                                  isError = true;
                                });
                              }
                            }
                            Future.delayed(Duration(seconds: 5), () {
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
                SizedBox(height: 200),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: SizedBox(
                    child: ButtonCus(
                      BGbotton: Color(0xFFFF5790),
                      buttonName: "Send Again",
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) => AlertInfo(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => HelloCard(),
                              //     ),
                              //   );
                              // },
                            ),
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
