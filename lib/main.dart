import 'package:flutter/material.dart';
import 'package:hungry_app/splash.dart';

import 'features/auth/view/login_view.dart';
import 'features/auth/view/signUp_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignupView.routeName,
routes: {
  SplashView.routeName:(context)=>SplashView(),
  LoginView.routeName:(context)=>LoginView(),
  SignupView.routeName:(context)=>SignupView(),
},
    );
  }
}
