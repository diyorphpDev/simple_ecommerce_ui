import 'package:exam_proj/cubit/onboarding_state.dart';
import 'package:exam_proj/screens/head_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingInitialState> {
  OnboardingCubit() : super(OnboardingInitialState());

  void nextPage(PageController controller, context) {
    final nextIndex = (controller.page?.round() ?? 0) + 1;

    if (nextIndex < state.pages.length) {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      emit(state);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HeadScreen()),
      );
    }
  }
}
