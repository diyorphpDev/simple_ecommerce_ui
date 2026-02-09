import 'package:exam_proj/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    loadScreen();
    super.initState();
  }

  void loadScreen(){
    Future.delayed(Duration(seconds: 2)).then((v){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Center(
          child: Image.asset("assets/images/quickmart.png"),
        ),
      ),
    );
  }
}