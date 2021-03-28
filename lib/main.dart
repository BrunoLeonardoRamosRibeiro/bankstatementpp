import 'package:bankstatementpp/app/theme/app_colors.dart';
import 'package:bankstatementpp/app/ui/bank_statement/bank_statement_page.dart';
import 'package:bankstatementpp/app/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: bankBlackColor,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio Banco Afro',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: bankBlackColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: SplashPage(),
    );
  }
}
