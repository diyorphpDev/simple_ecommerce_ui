import 'package:exam_proj/screens/main_screen.dart';
import 'package:flutter/material.dart';

abstract class HeadState {}

class HeadInitialState extends HeadState {
  final List<Widget> pages;
  final int pageIndex;

  HeadInitialState({
    this.pages = const [MainScreen(), Text("sss"), MainScreen(), MainScreen(), MainScreen()],
    this.pageIndex = 0,
  });
}
