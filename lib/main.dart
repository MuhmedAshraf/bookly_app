import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/Splash/presentations/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme), //  الديفولت بتاع الخط انه ف اللايت ثيم عشان كدا هتلاقية بالاسود ميعرفش اني مستخدم الدارك مود ف لازم اعرفه بالطريقة دي وكدا هيطبق ع الابلكيشن كله
      ),

      home: const SplashView(),
    );
  }
}
