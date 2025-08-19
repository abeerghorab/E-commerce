import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task10depi/Sign_Up_screen.dart';
import 'package:task10depi/navigation/Favorites_screen.dart';
import 'package:task10depi/navigation/Home_screen.dart';
import 'package:task10depi/Login-screen.dart';
import 'package:task10depi/navigation/cart_screen.dart';
import 'package:task10depi/navigation/navigation_bar.dart';
import 'package:task10depi/navigation/product_details_page.dart';
import 'package:task10depi/navigation/product_model.dart';
import 'package:task10depi/navigation/profile_screen.dart';
import 'package:task10depi/navigation/scan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        SignUpPage.routeName: (context) => SignUpPage(),
        HomePage.routeName: (context) => HomePage(),
        MainPage.routeName: (context) => MainPage(),
        CartPage.routeName: (context) => CartPage(),
        ProfilePage.routeName: (context) => ProfilePage(),
        ScanPage.routeName: (context) => ScanPage(),
        FavoritesPage.routeName: (context) => FavoritesPage(),

        ProductOverviewPage.routeName: (context) => ProductOverviewPage(),
      },
      home: AnimatedSplashScreen(
        //pageTransitionType: PageTransitionType.topToBottom,
        backgroundColor: const Color.fromARGB(255, 233, 218, 88),
        splashIconSize: 800,
        splashTransition: SplashTransition.sizeTransition,
        splash: CircleAvatar(
          radius: double.infinity,
          backgroundImage: AssetImage('assets/IMG-20250808-WA0023.jpg'),
        ),

        nextScreen: LoginPage(),
      ),
    );
  }
}
