
import 'package:e_comapp/UI/password_recovery_code.dart';
import 'package:e_comapp/UI/starter_screen.dart';
import 'package:e_comapp/contant/color.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Shoope ',
      theme: ThemeData(
        dividerTheme: DividerThemeData(color: Colors.transparent),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: whilteColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PasswordRecoveryCode(),
    );
  }
}
