import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Utils/myroutes.dart';
import 'package:getx/views/Buttons.dart';
import 'package:getx/views/Snakbar.dart';
import 'package:getx/views/ThemeBottomSheetDialog.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      initialRoute: MyRoutes().buttons,
      routes: {
        MyRoutes().buttons: (context) => HomeScreen(),
        MyRoutes().snakebar: (context) => Snakbar(),
        MyRoutes().tbsa: (context) => TBsD(),
      },
    );
  }
}
