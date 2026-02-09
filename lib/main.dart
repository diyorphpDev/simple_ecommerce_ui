import 'package:exam_proj/cubit/head_cubit.dart';
import 'package:exam_proj/cubit/main_screen_cubit.dart';
import 'package:exam_proj/cubit/onboarding_cubit.dart';
import 'package:exam_proj/screens/splash_screen.dart';
import 'package:exam_proj/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => OnboardingCubit()),BlocProvider(create: (context)=>HeadCubit()),BlocProvider(create: (context)=>MainScreenCubit())],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce",
      theme: ThemeLight.lightTheme,
      home: SplashScreen(),
    );
  }
}
